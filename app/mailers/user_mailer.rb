class UserMailer < ApplicationMailer
  default from: 'abdul.raheem@devsinc.com'

  def welcome_email
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def send_notification_mail(article)
    @article = article
    mail(to: User.pluck(:email), subject: 'Simple Demo to showcase Active Job')
  end
end
