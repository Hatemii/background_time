class HomeController < ApplicationController
  def hello
    SendEmailJob.perform_async("Bob", "Marley")
  end
end