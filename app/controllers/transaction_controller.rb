class TransactionController < ApplicationController
  def month_end
  end

  def billing
    # contracts = Contract.where(active: => true)
#     contracts.each do |contract|
#       property = Property.find(contract.property_id)
      #TO DO: Add  :invoice_number,:value,
      # Invoice.create(contract_id: => contract.id, invoice_date: => Date.today, invoice_status_id: , month: => Date.today.month,  :year => Date.today.year) 
    # end
  end
end
