# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/welcome
  def welcome
     @user = User.all.sample
    UserMailer.welcome(@user, Batch.all.sample.id)
  end

end
