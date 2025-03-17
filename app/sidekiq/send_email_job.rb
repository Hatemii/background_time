class SendEmailJob
  include Sidekiq::Job
  sidekiq_options retry: 2 # Only 2 retries and then to the Dead Job Queue

  def perform(email)
    WelcomeMailer.with(email: email).welcome_email.deliver_now
  end
end
