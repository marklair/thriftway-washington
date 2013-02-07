ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => 'www.webstop.com',
  :user_name            => 'support@webstop.com',
  :password             => 'spamonga',
  :authentication       => 'plain',
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "webstop.com"
# Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?
