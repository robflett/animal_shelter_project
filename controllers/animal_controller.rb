require( 'sinatra')
require( 'sinatra/contrib/all')
require( 'pry' )
require( './models/animal.rb' )
require( './models/owner.rb' )
# require( './models/adoption.rb' )

get '/animals' do
  @animals = Animal.all()
  erb(:"animals/animals")
end

get '/animals/adopt' do
  @animal = Animal.find(params["animal_id"])
  @owners = Owner.all
  erb(:"animals/adopt")
end

get '/animals/new' do 
  erb(:"animals/new_animal")
end

post '/animals/new' do
  @animal = Animal.new( params )
  @animal.save
  erb(:"animals/create")
end

get '/animals/:id' do 
  @animal = Animal.find( params[:id] ) 
  erb(:"animals/index")
end