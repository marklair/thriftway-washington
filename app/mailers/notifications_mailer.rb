class NotificationsMailer < ActionMailer::Base
  default from: "support@webstop.com"
  default to:   "info@thriftway.com" # change

  def new_message(message)
    @message = message
    fields = {:subject => "Thriftway Washington Contact:"}
    # for inclusion of message topics
    #fields = {:subject => "Thriftway Washington Contact: #{message.message_topic.name}"}
    #fields[:cc] = message.message_topic.forwarding_address unless message.message_topic.forwarding_address.blank?
    mail(fields)
  end

end
