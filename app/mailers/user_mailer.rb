class UserMailer < ApplicationMailer

  def welcome(email)
    @product = Product.first
    mail to: email, subject: "Welcome to the application"
  end

end
