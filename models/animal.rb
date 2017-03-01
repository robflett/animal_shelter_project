require_relative ('../db/sqlrunner.rb')

class Animal

attr_accessor :id, :type, :name, :breed, :adoptable, :admission_date, :url

def initialize( options )

  @id = options['id'].to_i
  @name = options['name']
  @type = options['type']
  @breed = options['breed']
  @adoptable = options['adoptable']
  @admission_date = options['admission_date']
  @url = options['url']

end 

def save()
  sql = "INSERT INTO animals (name, type, breed, adoptable, admission_date, url) VALUES ('#{@name}', '#{@type}', '#{@breed}', '#{@adoptable}', '#{@admission_date}', '#{@url}') RETURNING *;"
  animal_info = SqlRunner.run(sql).first
  @id = animal_info['id'].to_i
end

def self.delete_all
  sql="DELETE FROM animals;"
  SqlRunner.run(sql)
end

def self.all()
  sql = "SELECT * FROM animals;"
  animals = SqlRunner.run( sql )
  result = animals.map { |animal| Animal.new( animal ) }
  return result
end

def self.find( id )
  sql = "SELECT * FROM animals WHERE id=#{id};"
  animal = SqlRunner.run( sql )
  result = Animal.new( animal.first )

  return result
end



def delete()
  sql = "DELETE FROM animals WHERE id=#{ @id };"
  SqlRunner.run( sql )
end

def update()
  sql = "UPDATE animals SET name = '#{@name}', type = '#{@type}', breed = '#{@breed}', adoptable = '#{@adoptable}', admission_date = '#{@admission_date}' WHERE id = '#{@id}';"
  SqlRunner.run(sql)
end



end