class Usermailer < ApplicationMailer
   default from: 'timchen7@gmail.comments'
   
   def welcome_email(user)
      @user = user
      @url  = 'http://www.gmail.com'
      mail(to: @user.email, subject: 'Welcome to uCast')
   end
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.usermailer.signup_confirmation.subject
  #
  def signup_confirmation(user)
    @user = user
    @greeting = "Hi"

    # mail to: emailuser.email, subject: "Sign Up Confirmation"
     mail to: user.email, subject: "Sign Up Confirmation"
  end
end
