require 'sinatra'
require 'active_record'
require 'shotgun'
ActiveRecord::Base.establish_connection(adapter: 'postgresql',
                            database: 'beer')
require_relative './app/models/beer'

get '/' do 
  "beers are awesome"
end

get '/create' do
  erb :create
end

post '/create' do
  p params
  params[:create]
  b = Beer.new
  b.name = params[:name]
  b.type = params[:type]
  b.save
  redirect '/create'

end

# get '/about' do
#   "beers will help you do things, and hinder you from doing others"
# end

# get '/photoload' do
#   erb :photoload
# end

# get '/photos' do
#   #display a list of photos , action is create

# patch '/photos/:id'
#   #update a specific photo
# end

# delete '/photos/:id'
#   #delete a specific photo, action is destroy
# end

# not_found do 
#   halt 404, 'no beer here'
# end