class Property < ActiveRecord::Base
  attr_accessible :address, :appraisal, :city, :code, :market_value, :neighborhood, :owner_id, :phone, :property_type_id, :rental_fee, :stratum
end
