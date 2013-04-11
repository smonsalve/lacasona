class Payment < ActiveRecord::Base
  attr_accessible :invoice_id, :payment_date, :payment_number, :payment_status_id, :value
  
  def self.do_payment(payment)
    @payment = payment
    @invoice = Invoice.find(payment.invoice_id)
    
    if @payment.value > 0
      interest_value = @invoice.interest_value.nil? ? 0 : @invoice.interest_value
      value = @invoice.value.nil? ? 0 : @invoice.value
      payment_value = @payment.value.nil? ? 0 : @payment.value
      value_paid = 0
      if(payment_value >= interest_value ) 
        payment_value = payment_value - interest_value
        paid_value = interest_value
      else
        payment_value = 0
        paid_value = interest_value - payment_value
      end
      
      if payment_value > 0
        
      end
      
    end
    #create payment
    #Payment.create(:invoice_id, => @invoice.id :payment_date => @payment.payment_date, :payment_number, :payment_status_id, :value)
  end
end
