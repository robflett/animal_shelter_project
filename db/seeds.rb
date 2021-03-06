require_relative('../models/animal.rb')
require_relative('../models/owner.rb')
require_relative('../models/adoption.rb')

Adoption.delete_all
Animal.delete_all
Owner.delete_all

animal1 = Animal.new({

  "name" => "Rufus",
  "type" => "Dog",
  "breed" => "Basset Hound",
  "adoptable" => "Adoptable",
  "admission_date" => "2017-04-12",
  "url" => "https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Bvdb-bassethound1.jpg/220px-Bvdb-bassethound1.jpg"

  })

animal2 = Animal.new({

  "name" => "Sparky",
  "type" => "Cat",
  "breed" => "Tabby",
  "adoptable" => "Not-Adoptable",
  "admission_date" => "2016-12-10",
  "url" => "https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Aegean_cat.jpg/220px-Aegean_cat.jpg"

  })
  
animal3 = Animal.new({

  "name" => "Corrie",
  "type" => "Dog",
  "breed" => "Daschund",
  "adoptable" => "Adoptable",
  "admission_date" => "2016-08-25",
  "url" => "https://upload.wikimedia.org/wikipedia/commons/thumb/6/63/Wire-haired_Dachshund_R_01.JPG/220px-Wire-haired_Dachshund_R_01.JPG"

  })

animal4 = Animal.new({

  "name" => "Nicko",
  "type" => "Dog",
  "breed" => "Springer Spaniel",
  "adoptable" => "Not-Adoptable",
  "admission_date" => "2017-02-23",
  "url" => "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Welsh_Springer_Spaniel_Dog.jpg/220px-Welsh_Springer_Spaniel_Dog.jpg"

  })

animal1.save
animal2.save
animal3.save
animal4.save

owner1 = Owner.new({
  "name" => "Claire Redfield",
  "address" => "10 Mansion Way"
  })

owner2 = Owner.new({
  "name" => "Barry Burton",
  "address" => "9 Louisiana Walk"
  })

owner3 = Owner.new({
  "name" => "Ada Wong",
  "address" => "4 Spain Place"
  })

owner4 = Owner.new({
  "name" => "Leon Kennedy",
  "address" => "22 Cruise Street"
  })

owner5 = Owner.new({
  "name" => "Chris Redfield",
  "address" => "4 Capperton Place"
  })

owner1.save
owner2.save
owner3.save
owner4.save
owner5.save

adoption1 = Adoption.new({
  "owner_id" => owner1.id,
  "animal_id" => animal2.id,
  "adopted_on" => "2017-02-22"
  })

adoption2 = Adoption.new({
  "owner_id" => owner2.id,
  "animal_id" => animal1.id,
  "adopted_on" => "2017-02-12"
  })

adoption3 = Adoption.new({
  "owner_id" => owner4.id,
  "animal_id" => animal3.id,
  "adopted_on" => "2017-02-08"
  })

adoption1.save
adoption2.save
adoption3.save
