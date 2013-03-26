class Contract < ActiveRecord::Base
  attr_accessible :code, :final_date, :initial_date, :lessee_id, :owner_id, :pay_day, :property_id, :rate_commission, :active
  belongs_to :property
  # has_one :owner
end
