class Project < ActiveRecord::Base
  has_and_belongs_to_many :boards
  has_one :department
  has_one :user
  
  validates :name, :presence => true, :length => { :maximum => 50 }
  validates_numericality_of :hours_estimate, :less_than_or_equal_to => 999
  validates_numericality_of :user_id, :only_integer => true
end
