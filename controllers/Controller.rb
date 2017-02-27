require( 'sinatra')
require( 'sinatra/contrib/all')
require( 'pry' )
require( './models/animal.rb' )
require( './models/owner.rb' )
# require( './models/adoption.rb' )

get '/animals' do
  @animals = Animal.all()
  erb(:animals)
end

get '/owners' do
  @owners = Owner.all()
  erb(:owners)
end

get '/animals/adopt' do
  @animal = Animal.find(params["animal_id"])
  @owners = Owner.all
  erb(:"animals/adopt")
end

get '/owners/new' do 
  erb(:new)
end

post '/owners/new' do
  @owner = Owner.new( params )
  @owner.save
  erb(:create) 
end



get '/animals/new' do 
  erb(:new_animal)
end

post '/animals/new' do
  @animal = Animal.new( params )
  @animal.save
  erb(:create)
end



get '/owners/:id' do 
  @owner = Owner.find( params[:id] ) 
  erb(:show_owner)
end


get '/animals/:id' do 
  @animal = Animal.find( params[:id] ) 
  erb(:show_animal)
end

# get 'owners/create'
#   erb(:create)