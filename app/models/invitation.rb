class Invitation < ActiveRecord::Base
  has_and_belongs_to_many :cuisines
  has_and_belongs_to_many :ambiances
  validates_presence_of :name, :date, :description, :convives, :price
  
  def convives=(integer)
    Self.convives = Convives.find_by_integer(integer) unless integer.blank?
  end
  
  
end
