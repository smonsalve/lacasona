module PropertiesHelper
  def property_code_by_id(id)
    Property.find_by_id(id) != nil ? Property.find_by_id(id).code : ''
  end
end
