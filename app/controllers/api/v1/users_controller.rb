class Api::V1::UsersController < ApplicationController

  def index
    @users = Users.all
    render json: @users
  end

  def create
    @user = User.create(user_params)
    render json: @user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    render json: @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: 'delete'
  end


  private
  def user_params
    params.permit(:email, :password)
  end

end