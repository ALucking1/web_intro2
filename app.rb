require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'

get '/' do
  'Hello world!'
end

get '/secret' do
  'My dirty little secret is?'
end

get '/puppy' do
  'Bow wow wow'
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do #post
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do #get
  erb(:form)
end
