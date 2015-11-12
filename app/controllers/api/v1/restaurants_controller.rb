class Api::V1::RestaurantsController < ApplicationController

  def index
    @restaurants = Restaunt.all
    render json: @restaurants
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    render json: @restaurant
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    render json: @restaurant
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    render json: 'delete'
  end


  private
  def restaurant_params
    params.permit(:name, :address, :user_id)
  end

end