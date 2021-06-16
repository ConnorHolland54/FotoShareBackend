require 'json'
class TokensController < ApplicationController
  def create
    @user = User.find_by_email(user_params["email"])
    if @user
      info = {
        token: JsonWebToken.encode(user_id: @user.id),
        email: @user.email
      }
      response.headers['Access-Control-Allow-Origin']  = '*'
      render json: info
    else
      render json: {
        "message": "Error"
      }
    end
  end

  private
  def user_params
    body = request.body.read
    hash = JSON.parse(body)
  end
end
