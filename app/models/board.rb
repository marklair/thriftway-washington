class Board < ActiveRecord::Base
  has_and_belongs_to_many :projects
  has_one :department
  
  validates :name, :presence => true, :uniqueness => true
  validates :position, :presence => true, :uniqueness => true, :length => { :maximum => 3 }
  validates_numericality_of :position, :greater_than => 0, :less_than_or_equal_to => 999, :only_integer => true
end
