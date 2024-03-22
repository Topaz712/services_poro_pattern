class UsersController < ApplicationController
  def create
    user = UserService::Base.create_user(user_params)
    if user.valid?
      render json: user, status: :created
    else
      render json: user, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(:name, :email)
  end
end
