class ActiveMailer < ActionMailer::Base
  default from: "from@example.com"

  def watchdog_email(watchdog)
  end
end
