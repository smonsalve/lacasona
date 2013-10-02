class Owner < Person
  attr_accessible :address, :card_id_number, :cellphone, :email, :legal_nature_id, :name, :phone, :tax_regime_id
  has_one :contract
end

