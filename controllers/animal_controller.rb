require( 'sinatra')
require( 'sinatra/contrib/all')
require( 'pry' )
require( './models/animal.rb' )
require( './models/owner.rb' )
require( './models/adoption.rb' )


#find by type method#
get '/animals/show_type' do 
  @animal = Animal.find_type_dog() 
  erb(:"animals/show_type")
end


get '/animals/show_type' do 
  @animal = Animal.find_type_cat() 
  erb(:"animals/show_type")
end

###


get '/animals' do
  @animals = Animal.all()
  erb(:"animals/show")
end

get '/animals/:id/adopt' do
  @animal = Animal.find(params[:id])
  @owners = Owner.all
  erb(:"animals/adopt")
end

post '/animals/:id/adopt' do
  owner = Owner.find(params[:owner_id])
  owner.adopt_animal(params[:id])
  redirect to('/owners')
end

get '/animals/new' do 
  erb(:"animals/new")
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

post '/animals/:id/delete' do
  animal = Animal.find( params[:id])
  animal.delete
  redirect to '/animals'
end



get '/animals/:id/edit' do
  @animal = Animal.find( params[:id])
  erb(:"animals/edit")
end

post '/animals/:id' do
  animal = Animal.new( params)
  animal.update
  redirect to '/animals'
end


#find by breed method#
get '/animals/:id' do 
  @animal = Animal.find_breed( params[:id] ) 
  erb(:"animals/index")
end

