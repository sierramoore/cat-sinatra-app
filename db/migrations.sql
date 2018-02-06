CREATE DATABASE cat;

\c cat

CREATE TABLE cats(
  id SERIAL PRIMARY KEY,
  name VARCHAR(32),
  breed VARCHAR(60),
  color VARCHAR(32)
);


-- add a cat:
-- INSERT INTO cats (name, breed, color) VALUES ('Roma', 'Sphynx', 'Pink');

-- view cat in db:
-- SELECT * FROM cats;

INSERT INTO cats (name, breed, color) VALUES ('Nectar', 'Long-hair', 'White');