class NotificationsMailer < ActionMailer::Base
  default from: "support@webstop.com"
  default to:   "mark@webstop.com" # change

  def new_message(message)
    @message = message
    fields = {:subject => "Thriftway Washington Contact: #{message.message_topic.name}"}
    fields[:cc] = message.message_topic.forwarding_address unless message.message_topic.forwarding_address.blank?
    mail(fields)
  end

end
