class PropertyFacility < ActiveRecord::Base
  attr_accessible :facilities_id, :property_id, :quantity
  belongs_to :property
  belongs_to :facility
end
