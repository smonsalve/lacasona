module PropertiesHelper
  def property_description_by_id(id)
    Property.find_by_id(id) != nil ?  Property.find_by_id(id).address + " "+  Property.find_by_id(id).neighborhood+ "-"+  Property.find_by_id(id).city : ""
  end
    
end
