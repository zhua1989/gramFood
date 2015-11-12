class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create()

  end

end 