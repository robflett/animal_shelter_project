require_relative ('../db/sqlrunner.rb')

class Adoption

attr_accessor :owner_id, :animal_id 
attr_reader :id

def initialize( options )

  @id = options['id'].to_i
  @owner_id = options['owner_id'].to_i
  @animal_id = options['animal_id'].to_i
  @adopted_on = options['adopted_on']

end 

def save()
  sql="INSERT INTO adoptions (owner_id, animal_id) VALUES ('#{@owner_id}', '#{@animal_id}') RETURNING *;"
  adoption = SqlRunner.run(sql).first
  @id = adoption['id'].to_i
end

def self.delete_all
  sql="DELETE FROM adoptions;"
  SqlRunner.run(sql)
end

def self.all()
  sql = "SELECT * FROM adoptions;"
  adoptions = SqlRunner.run( sql )
  result = adoptions.map { |adoption| Adoption.new( adoption ) }
  return result
end

def self.find( id )
  sql = "SELECT * FROM adoptions WHERE id=#{id};"
  adoption = SqlRunner.run( sql )
  result = Adoption.new( adoption.first )

  return result
end

def delete()
  sql = "DELETE FROM adoptions WHERE id=#{ @id };"
  SqlRunner.run( sql )
end

end