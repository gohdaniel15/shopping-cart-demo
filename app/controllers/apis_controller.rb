class ApisController < ApplicationController

  # def retrieve
  #   response = Net::HTTP.get(URI('https://api.github.com/users/gohdaniel15'))
  #   @user = ActiveSupport::JSON.decode(response)
  #   render json: @user
  # end

  def retrieve
    @service = GetApiService.call
    render json: @service
  end
end
