require_relative('../models/animal.rb')
require_relative('../models/owner.rb')
require_relative('../models/adoption.rb')

# Adoption.delete_all
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
  "name" => "Claire Redfield",
  "pets" => ""
  })

owner2 = Owner.new({
  "name" => "Barry Burton",
  "pets" => ""
  })

owner3 = Owner.new({
  "name" => "Ada Wong",
  "pets" => ""
  })

owner4 = Owner.new({
  "name" => "Leon Kennedy",
  "pets" => ""
  })

owner5 = Owner.new({
  "name" => "Chris Redfield",
  "pets" => ""
  })

owner1.save
owner2.save
owner3.save
owner4.save
owner5.save

# adoption1 = Adoption.new({
#   "owner_id" => "owner1.id",
#   "animal_id" => "animal2.id",
#   "adopted_on" => "2017-02-22"
#   })

# adoption2 = Adoption.new({
#   "owner_id" => "owner2.id",
#   "animal_id" => "animal1.id",
#   "adopted_on" => "2017-02-12"
#   })

# adoption3 = Adoption.new({
#   "owner_id" => "owner4.id",
#   "animal_id" => "animal3.id",
#   "adopted_on" => "2017-02-08"
#   })

# adoption1.save
# adoption2.save
# adoption3.save
