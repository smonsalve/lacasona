class Invoice < ActiveRecord::Base
  attr_accessible :contract_id, :interest_value, :invoice_date, :invoice_number, :invoice_status_id, :month, :value, :year, :value_paid, :interest_paid
end
