class UserMailer < ApplicationMailer
 
  def welcome_email(user_id)
    @user = User.find_by(id: user_id)
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def birthday(user_id)
    @user = User.find_by(id: user_id)
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end


end
