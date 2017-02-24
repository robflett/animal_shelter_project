DROP TABLE IF EXISTS owners;
DROP TABLE IF EXISTS animals; 

CREATE TABLE owners(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255)
  -- pets_adopted VARCHAR(255)
  -- funds to be added ---
);

CREATE TABLE animals(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  type VARCHAR(255),
  breed VARCHAR(255),
  adoptable VARCHAR(255), 
  admission_date DATE
  -- adoptable to be a drop down menu
  -- owner_id SERIAL4 REFERENCES owners(id),
  
);