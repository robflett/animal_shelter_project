require( 'sinatra')
require( 'sinatra/contrib/all')
require( 'pry' )
require( './models/animal.rb' )
require( './models/owner.rb' )
require( './models/adoption.rb' )
require( './controllers/animal_controller.rb')
require( './controllers/owner_controller.rb')
require( './controllers/adoption_controller.rb')

get '/' do
  erb(:welcome)
end