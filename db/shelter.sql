DROP TABLE IF EXISTS owners;
DROP TABLE IF EXISTS animals; 

CREATE TABLE owners(
  owner_id SERIAL4 PRIMARY KEY,
  name VARCHAR(255)
  -- pets_adopted VARCHAR(255)
  -- funds to be added ---
);

CREATE TABLE animals(
  animal_id SERIAL4 PRIMARY KEY,
  owner_id SERIAL4 REFERENCES owners(owner_id),
  name VARCHAR(255),
  type VARCHAR(255),
  breed VARCHAR(255),
  adoptable VARCHAR(255), 
  admission_date DATE
  -- adoptable to be a drop down menu
  
);