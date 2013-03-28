class Contract < ActiveRecord::Base
  attr_accessible :code, :final_date, :initial_date, :lessee_id, :owner_id, :pay_day, :property_id, :rate_commission, :active, :owner_name, :lessee_name
  belongs_to :property
  belongs_to :property
  # has_one :owner
  belongs_to :owner
  belongs_to :lessee
  
  
  def lessee_name
    lessee.try(:name)
  end
  
  def lessee_name=(name)
    self.lessee = Lessee.find_by_name(name) if name.present?
  end
  
  def owner_name
    owner.try(:name)
  end
  
  def owner_name=(name)
    self.owner = Owner.find_by_name(name) if name.present?
  end
end
  