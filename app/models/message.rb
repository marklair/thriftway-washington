class Message < ActiveRecord::Base
  validates :name, :email, :phone, :company, :content,  :presence => true
end
