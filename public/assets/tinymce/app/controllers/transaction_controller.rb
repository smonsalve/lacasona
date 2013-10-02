class TransactionController < ApplicationController
  
  def index
    if params[:billing]
      month = params[:date][:month] 
      year = params[:date][:year]

      respond_to do |format|
        process_status, error_message_list =  billing(month,year)
        if process_status
          format.html { redirect_to transaction_index_path, notice: 'Facturacion Exitosa.' }
          format.json { head :no_content }
        else

          format.html { redirect_to transaction_index_path, notice: "#{error_message_list.join("','")}" }
          format.json { head :no_content }
        end

      end
    elsif params[:month_end]
      month = params[:date][:month] 
      year = params[:date][:year]

      respond_to do |format|
        process_status, error_message_list = month_end(month,year)
        if process_status
          format.html { redirect_to transaction_index_path, notice: 'Facturacion Exitosa.' }
          format.json { head :no_content }
        else

          format.html { redirect_to transaction_index_path, notice: "#{error_message_list.join("','")}" }
          format.json { head :no_content }
        end

      end
    end
  end
  
  def month_end(month,year)
    contracts = Contract.where(:active => true)
    contracts.each do |contract|
      total_payment = 0.0
      total_invoice = 0.0
      invoices = Invoice.where(:contract_id => contract.id, :month => month, :year => year)
      invoices.each do |invoice|
       total_invoice += invoice.value
        payments = Payment.find_all_by_invoice_id(invoice.id)
        payments.each do |payment|
          total_payment += payment.value
        end
        
      end
    end
  end

  def billing(month,year)
    process_sucessful = true
    error_message_list = nil
    
    contracts = Contract.where(:active => true)
    contracts.each do |contract|
      #Find overdue invoices
      overdue_invoices = Invoice.where(:invoice_status_id => InvoiceStatus.find_by_code_status('EXPIRED').id,:contract_id => contract.id)
      overdue_invoices.each do |overdue_invoice|
        old_interes = overdue_invoice.interest_value.nil? ? 0 : overdue_invoice.interest_value
        total_interest = old_interest +  (contract.interest_rate * calculate_overdue_value(overdue_invoice.id)) 
        overdue_invoice.interest_value = total_interest
        overdue_invoice.save
      end
      
      property = Property.find(contract.property_id)
      doc_type = DocumentType.find_by_name('INVOICE').nil? ? DocumentType.create(:name =>'INVOICE') : DocumentType.find_by_name('INVOICE')
      consecutive = Consecutive.find_by_consecutive_type_id(doc_type.id).nil? ? Consecutive.create(:serie => 0, :consecutive_type_id => doc_type.id ) : Consecutive.find_by_consecutive_type_id(doc_type.id)
      
      invoice_number = consecutive.serie
      until Invoice.find_by_invoice_number(invoice_number).nil?
        invoice_number += 1 
      end
   
      invoice = Invoice.create(:contract_id => contract.id, :invoice_date => Date.today, :month => month,  :year => year, :invoice_number => invoice_number,:invoice_status_id => InvoiceStatus.find_by_code_status('PAYMENT_PENDING').id, :value => property.rental_fee) 
      consecutive.serie= invoice_number +1
      consecutive.save
    
      BalanceMovement.create(:document_id => invoice.invoice_number,:movement_date => Date.today,:document_type_id => doc_type.id, :value=> invoice.value)
      # else
      # process_sucessful = false
      # error_message_list.nil? ? (error_message_list = Array.new ; error_message_list << "Invoice #{consecutive.serie} already exist") : error_message_list << "Invoice #{consecutive.serie} already exist"
      # end
    end
    return process_sucessful, error_message_list
  end
  
  def calculate_overdue_value(invoice_id)
    invoice_value = Invoice.find(invoice_id).value
    payments = Payment.find_all_by_invoice_id(invoice_id)
    total_payment_value = 0.0
    payments.each do |payment|
        total_payment_value += payment.value
    end
    invoice_value - total_payment_value
  end
end
