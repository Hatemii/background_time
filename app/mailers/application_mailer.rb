class ApplicationMailer < ActionMailer::Base
  default from: ENV["MAIL_DEFAULT_EMAIL"]
  layout "mailer"
end
