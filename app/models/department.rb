class Department < ActiveRecord::Base
  has_many :boards
  has_many :departments
  
  validates :name, :presence => true, :uniqueness => true
end
