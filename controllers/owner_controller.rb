require( 'sinatra')
require( 'sinatra/contrib/all')
require( 'pry' )
require( './models/animal.rb' )
require( './models/owner.rb' )
require( './models/adoption.rb' )



get '/owners' do
  @owners = Owner.all()
  erb(:"owners/show")
end

get '/owners/new' do 
  erb(:"owners/new")
end

post '/owners/new' do
  @owner = Owner.new( params )
  @owner.save
  erb(:"owners/create") 
end

get '/owners/:id' do 
  @owner = Owner.find( params[:id] ) 
  erb(:"owners/index")
end

post '/owners/:id/delete' do
  owner = Owner.find( params[:id])
  owner.delete
  redirect to '/owners'
end

get '/owners/:id/edit' do
  @owner = Owner.find( params[:id] )
  erb(:"owners/edit")
end

post '/owners/:id' do
  owner = Owner.new( params )
  owner.update
  redirect to '/owners'
end