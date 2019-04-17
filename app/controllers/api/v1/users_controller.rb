class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
    # format.json {render json:@users, serializer: UserSeralizer}
  end

  def create
    @user = User.create(user_params)
    render json: @user
  end

  def show
    user = User.find(params[:id])
    render json: @user

  end
private

def user_params
  params.permit(:name, :username, :password, :email, :phone)
end

end
