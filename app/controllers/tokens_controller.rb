class TokensController < ApplicationController
  def create
    @user = User.find_by_email(user_params[:email])
    if @user
      render json: {
        token: JsonWebToken.encode(user_id: @user.id),
        email: @user.email
      }
    else
      head :unauthorized
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :uid)
  end
end
