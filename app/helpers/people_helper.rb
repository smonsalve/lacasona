module PeopleHelper
  def tax_regime_name_by_id(id)
    TaxRegime.find_by_id(id) != nil ? TaxRegime.find_by_id(id).name : ''
  end
  def legal_nature_name_by_id(id)
    LegalNature.find_by_id(id) != nil ?  LegalNature.find_by_id(id).name : ''
  end
end
