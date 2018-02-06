CREATE DATABASE cat;

\c cat

CREATE TABLE cats(
  id SERIAL PRIMARY KEY,
  name VARCHAR(32),
  breed VARCHAR(60),
  color VARCHAR(32)
);
