require_relative ('../db/sqlrunner.rb')
require_relative ('../models/animal.rb')

class Owner

attr_accessor :name, :id, :address


def initialize( options )

  @id = options['id'].to_i
  @name = options['name']
  @address = options['address']

end 

def save()
  sql="INSERT INTO owners (name, address) VALUES ('#{@name}', '#{@address}') RETURNING *;"
  owner_info = SqlRunner.run(sql).first
  @id = owner_info['id'].to_i
end

def self.delete_all
  sql="DELETE FROM owners;"
  SqlRunner.run(sql)
end

def self.all()
  sql = "SELECT * FROM owners;"
  owners = SqlRunner.run( sql )
  result = owners.map { |owner| Owner.new( owner ) }
  return result
end

def self.find( id )
  sql = "SELECT * FROM owners WHERE id=#{id};"
  owner = SqlRunner.run( sql )
  result = Owner.new( owner.first )

  return result
end

def delete()
  sql = "DELETE FROM owners WHERE id=#{ @id };"
  SqlRunner.run( sql )
end

# def add_pet(pet)
#   @pets << pet
# end


def adopt_animal(animal_id)
 
  Adoption.new({'animal_id' => animal_id, 'owner_id' => @id, 'adopted_on' => Date.new}).save
  
  # owner.add_pet(pet)
  #delete id from animals table
end


end