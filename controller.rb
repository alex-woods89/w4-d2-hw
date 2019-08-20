require ('sinatra')
require ('sinatra/reloader')
require 'pry'

require_relative ('./models/film')
also_reload('./models/*')

get '/film' do
@films = Film.all
erb(:'films/index')
end

get '/film/:id' do
  @film = Film.find(params[:id])
  erb(:'films/details')
end
