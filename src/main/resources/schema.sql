CREATE TABLE persons(
	name varchar,
	surname varchar,
	age int,
	phone_number varchar,
	city_of_living varchar,
	primary key (name, surname, age));

CREATE TABLE customers(
                          id serial primary key,
                          name varchar,
                          surname varchar,
                          age int,
                          phone_number varchar);

CREATE TABLE orders(
                       id serial primary key,
                       date timestamp without time zone,
                       customer_id int REFERENCES customers (id),
                       product_name varchar,
                       amount float);

INSERT INTO
    customers (name, surname, age, phone_number)
VALUES
    ('alexey', 'Петров', 25, '+79500000000'),
    ('Alexey', 'Иванов', 28, '+79510000000'),
    ('Vladimir', 'Иванов', 38, '+79530000000'),
    ('alexeY', 'Сидоров', 29, '+79520000000');

INSERT INTO
    orders (date, customer_id, product_name, amount)
VALUES
    ('2023-01-01 20:35:17', 1, 'phone', 10000.57),
    ('2023-01-03 11:53:41', 2, 'watch', 5372.15),
    ('2023-01-05 13:53:41', 3, 'glasses', 3500.15),
    ('2023-01-05 14:53:41', 4, 'glasses', 3500.15),
    ('2023-01-05 15:03:01', 1, 'glasses', 3500.15);
