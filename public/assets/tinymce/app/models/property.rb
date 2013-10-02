class Property < ActiveRecord::Base
  attr_accessible :address, :appraisal, :city, :code, :market_value, :neighborhood, :owner_id, :phone, :property_type_id, :rental_fee, :stratum, :owner_name
  has_many :contracts
  has_many :property_facilities
  has_many :facilities, :through => :property_facilities
  belongs_to :owner
  
  def owner_name
    owner.try(:name)
  end
  
  def owner_name=(name)
    self.owner = Person.find_by_name(name) if name.present?
  end
end
