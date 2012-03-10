ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "uncarbonatedsoftware.com",
  :user_name            => "duggan",
  :password             => "frankfoot1",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
