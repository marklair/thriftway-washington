class UserMailer < ActionMailer::Base
  default :from => "greg@webstop.com"
  
  def password_reset_instructions(user)
    @user = user
    mail(:to => "#{user.username} <#{user.email}>", :subject => "Password Reset Instructions")
  end
  
  # def password_reset_instructions(user)
  #   subject       "Password Reset Instructions"
  #   from          "Password Notifier <noreply@webstop.com>"
  #   recipients    user.email
  #   sent_on       Time.now
  #   body          :edit_password_reset_url => edit_password_reset_url(user.perishable_token)
  # end
end