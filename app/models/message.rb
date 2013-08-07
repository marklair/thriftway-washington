class Message < ActiveRecord::Base
  #belongs_to :message_topic
  validates :firstname, :lastname, :email, :phone, :content, :presence => true
end
