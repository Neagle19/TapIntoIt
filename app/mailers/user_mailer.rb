class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #

  def welcome(user, batch_id)
    @user = user
    @qr = RQRCode::QRCode.new("https://www.tapintoit.me/beers/beer_id/batches/#{batch_id}")

    mail(to: @user.email, subject: 'this is you QR code')

  end

end

