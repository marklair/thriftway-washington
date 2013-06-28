class Message < ActiveRecord::Base
  validates :name, :email, :phone, :company, :message_type, :presence => true
end
