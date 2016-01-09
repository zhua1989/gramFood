require 'httparty'
require 'pry'

class WelcomeController < ApplicationController


def index
  
  geo_request = HTTParty.get('http://ipinfo.io/geo/')
  location = geo_request["loc"]
  splitted = location.split(",")
  
  # read the api_key from local_env.yml file
  apiKey = ENV["instagram_key"]
  @APIurl = "https://api.instagram.com/v1/tags/foodporn/media/recent?client_id=" + apiKey
  #hit API for Results
  request = HTTParty.get(@APIurl)
  #get random post and get image url 
  @random_post = request["data"].sample
  #get the image url of the random gram post
  @random_image = @random_post["images"]["standard_resolution"]["url"]
  #get the caption of the random post
  @random_captions = @random_post["caption"]["text"]
  
  puts @random_image
  puts @random_captions
  
end







end