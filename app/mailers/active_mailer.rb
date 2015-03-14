class ActiveMailer < ActionMailer::Base
  default from: "from@example.com"

  def watchdog_email(watchdog)
    @watchdog = watchdog
    mail(to: )
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
