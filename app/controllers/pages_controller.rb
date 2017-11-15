class PagesController < ApplicationController

  before_action :authenticate_user!

  def home
  end

  def sendmail
    UserMailer.welcome(current_user.email).deliver_later
    redirect_to home_path
  end

end
