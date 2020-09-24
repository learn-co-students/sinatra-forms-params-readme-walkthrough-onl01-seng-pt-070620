require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end

  post '/food' do
   @name = params[:name].to_s
   @favorite_food = params[:favorite_food].to_s
   "My name is #{@name}, and I love #{@favorite_food}."
  end

end