class Person < ActiveRecord::Base
  attr_accessible :address, :card_id_number, :cellphone, :email, :legal_nature_id, :name, :phone, :tax_regime_id
  # belongs_to :tax_regime
  has_many :properties
  # def tax_regime_name
  #   tax_regime.try(:name)
  # end
  # 
  # def tax_regime_name=(name)
  #   self.tax_regime = TaxRegime.find_or_create_by_name(name) if name.present?
  # end
end
