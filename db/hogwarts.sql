DROP TABLE students;
DROP TABLE hogwarts;

  CREATE TABLE students(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    house VARCHAR(255),
    age INT
  );

CREATE TABLE houses(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  logo VARCHAR(255)
);
