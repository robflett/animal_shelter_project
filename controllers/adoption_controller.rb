require( 'sinatra')
require( 'sinatra/contrib/all')
require( 'pry' )
require( './models/animal.rb' )
require( './models/owner.rb' )
require( './models/adoption.rb' )

get '/adoptions' do
  @adoptions = Adoption.all()
  erb(:"index")
end