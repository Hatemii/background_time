class SendEmailJob
  include Sidekiq::Job
  sidekiq_options retry: 2 # Only 2 retries and then to the Dead Job Queue

  def perform(*args)
    puts "####################"
    puts "Hi #{args[0]} #{args[1]}"
    puts "####################"
  end
end
