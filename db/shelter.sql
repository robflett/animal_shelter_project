DROP TABLE IF EXISTS adoptions; 
DROP TABLE IF EXISTS owners;
DROP TABLE IF EXISTS animals; 

CREATE TABLE owners(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  address VARCHAR(255)
  -- funds to be added ---
);

CREATE TABLE animals(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  type VARCHAR(255),
  breed VARCHAR(255),
  adoptable VARCHAR(255), 
  admission_date VARCHAR(255)

  -- owner_id SERIAL4 REFERENCES owners(id),
);

CREATE TABLE adoptions(
  id SERIAL4 PRIMARY KEY,
  owner_id SERIAL4 REFERENCES owners ON DELETE CASCADE,
  animal_id SERIAL4 REFERENCES animals ON DELETE CASCADE,
  adopted_on DATE   
);