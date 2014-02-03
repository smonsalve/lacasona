module PropertyTypesHelper
  def property_type_name_by_id(id)
    PropertyType.find_by_id(id) != nil ? PropertyType.find_by_id(id).name : ''
  end
end
