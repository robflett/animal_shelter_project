require_relative('../models/animal.rb')
require_relative('../models/owner.rb')

Animal.delete_all
Owner.delete_all

animal1 = Animal.new({
  "name" => "Steve",
  "type" => "Dog",
  "breed" => "Basset Hound",
  "adoptable" => "Adoptable",
  "admission_date" => "2017-04-12"
  })

animal2 = Animal.new({
  "name" => "Janick",
  "type" => "Cat",
  "breed" => "Tabby",
  "adoptable" => "Not-Adoptable",
  "admission_date" => "2016-12-10"
  })
  
animal3 = Animal.new({
  "name" => "Adrian",
  "type" => "Dog",
  "breed" => "Daschund",
  "adoptable" => "Adoptable",
  "admission_date" => "2016-08-25"
  })

animal4 = Animal.new({
  "name" => "Nicko",
  "type" => "Dog",
  "breed" => "Springer Spaniel",
  "adoptable" => "Not-Adoptable",
  "admission_date" => "2017-02-23"
  })

animal1.save
animal2.save
animal3.save
animal4.save

owner1 = Owner.new({
  "name" => "Life Raluy"
  })

owner2 = Owner.new({
  "name" => "Aaron Hubber"
  })

owner3 = Owner.new({
  "name" => "Dallas Henderson"
  })

owner4 = Owner.new({
  "name" => "Grant Mclay"
  })

owner5 = Owner.new({
  "name" => "Tony Neri"
  })

owner1.save
owner2.save
owner3.save
owner4.save
owner5.save
