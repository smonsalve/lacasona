class Page < ActiveRecord::Base
  attr_accessible :content, :name, :permalink, :visible
  validates_uniqueness_of :permalink
  def to_param
    permalink
  end
end
