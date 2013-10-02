class Payment < ActiveRecord::Base
  attr_accessible :invoice_id, :payment_date, :payment_number, :payment_status_id, :value
  
  def self.do_payment(payment)
    @payment = payment
    @invoice = Invoice.find(payment.invoice_id)
    full_paid = true
    if @payment.value > 0
      
      old_interest_paid = @invoice.interest_paid.nil? ? 0 : @invoice.interest_paid
      old_value_paid = @invoice.value_paid.nil? ? 0 : @invoice.value_paid
      
      interest_value = @invoice.interest_value.nil? ? 0 : @invoice.interest_value
      value = @invoice.value.nil? ? 0 : @invoice.value
      payment_value = @payment.value.nil? ? 0 : @payment.value
      payment_value = payment_value + old_value_paid + old_interest_paid
      
      value_paid = 0
      interest_paid = 0
      
      if(payment_value >= interest_value ) 
        payment_value = payment_value - interest_value
        interest_paid = interest_value
      else
        full_paid = false
        payment_value = 0
        interest_paid = interest_value - payment_value
      end
      
      if payment_value > 0
        if payment_value >= value 
          payment_value = payment_value - value
          value_paid = value
        else
          full_paid = false
          payment_value = 0
          value_paid = value - payment_value
        end
      end
      
      if full_paid
        @invoice.invoice_status_id = InvoiceStatus.find_by_code_status('PAID').id
      end
      
      @payment.value = payment_value
      @payment.save
      @invoice.value_paid = value_paid
      @invoice.interest_paid = interest_paid
      @invoice.save
      
    end
    #create payment
    #Payment.create(:invoice_id, => @invoice.id :payment_date => @payment.payment_date, :payment_number, :payment_status_id, :value)
  end
end
