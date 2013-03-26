class Payment < ActiveRecord::Base
  attr_accessible :invoice_id, :paymen_date, :payment_number, :payment_status_id, :value
end
