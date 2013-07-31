class Message < ActiveRecord::Base
  #belongs_to :message_topic
  validates :first_name, :last_name, :email, :phone, :content, :presence => true
end
