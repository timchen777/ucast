# Preview all emails at http://localhost:3000/rails/mailers/usermailer
class UsermailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/usermailer/signup_confirmation
  def signup_confirmation
    Usermailer.signup_confirmation
  end

end
