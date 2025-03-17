class SendEmailJob
  include Sidekiq::Job
  sidekiq_options retry: 2 # Only 2 retries and then to the Dead Job Queue

  def perform(email)
    email_to_deliver = WelcomeMailer.with(email: email).welcome_email
    email_to_deliver.deliver_now!
  end
end
