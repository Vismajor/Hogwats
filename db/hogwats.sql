DROP TABLE students;
DROP TABLE houses;

CREATE TABLE houses (
  id serial8 primary key,
  name varchar(255),
  image_url varchar(255)
);

CREATE TABLE students (

  id serial8 primary key,
  first_name varchar(255),
  last_name varchar(255),
  house_id int8 references houses(id),
  age int2
);
