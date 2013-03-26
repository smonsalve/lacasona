class TaxRegime < ActiveRecord::Base
  attr_accessible :name, :tax_percentage
  has_many :people
end
