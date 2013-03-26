class Facility < ActiveRecord::Base
  attr_accessible :name
  has_many :property_facilities
  has_many :properties, :through => :property_facilities
end
