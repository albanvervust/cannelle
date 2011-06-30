class Invitation < ActiveRecord::Base
  has_and_belongs_to_many :cuisines
  has_and_belongs_to_many :ambiances
  validates_presence_of :name, :date, :description, :convives, :price
end
