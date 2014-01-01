class Car < ActiveRecord::Base
  validates_presence_of :color
  validates :year, :numericality => { :greater_than => 1980 }
  validates :mileage, :numericality => { :greater_than => 0 }
end
