class NotificationsMailer < ActionMailer::Base
  default from: "contact@webstop.com"
  default to:   "management@webstop.com"

  def new_message(message)
    @message = message
    mail(:subject => "A Webstop contact us message.")
  end

end
