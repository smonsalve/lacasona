class Property < ActiveRecord::Base
  attr_accessible :address, :appraisal, :city, :code, :market_value, :neighborhood, :owner_id, :phone, :property_type_id, :rental_fee, :stratum
  has_many :contracts
  has_many :property_facilities
  has_many :facilities, :through => :property_facilities
end
