INSERT INTO Category (name)
VALUES ('Electronics'),
       ('Clothing'),
       ('Home Appliances'),
       ('Books'),
       ('Toys'),
       ('Sports Equipment');

INSERT INTO Address (number, road, city, add_info)
VALUES ('123', 'Main Street', 'Cityville', NULL),
       ('456', 'Broadway', 'Townsville', 'Near the Park'),
       ('789', 'Elm Avenue', 'Villageton', 'Opposite the School'),
       ('101', 'Maple Street', 'Metropolis', 'Apartment 4B'),
       ('202', 'Oak Street', 'Smalltown', 'Suite 100'),
       ('303', 'Pine Street', 'Hamlet', 'Behind the Mall'),
       ('404', 'Birch Road', 'Urbanville', NULL),
       ('505', 'Cedar Street', 'Countryside', NULL),
       ('606', 'Spruce Street', 'Suburbia', NULL),
       ('707', 'Aspen Road', 'Rivercity', NULL),
       ('808', 'Fir Street', 'Seaside', NULL),
       ('909', 'Cherry Avenue', 'Lakeside', NULL),
       ('1001', 'Chestnut Street', 'Mountainview', NULL),
       ('1102', 'Willow Lane', 'Hilltown', NULL),
       ('1203', 'Poplar Street', 'Greenville', NULL),
       ('1304', 'Walnut Street', 'Forestville', NULL),
       ('1405', 'Hazel Avenue', 'Plainsville', NULL),
       ('1506', 'Magnolia Street', 'Oceanview', NULL),
       ('1607', 'Pineapple Street', 'Valleytown', NULL),
       ('1708', 'Coconut Road', 'Beachville', NULL);

INSERT INTO Shop (name, description, active_since, disable_since, siret, address_id)
VALUES ('Electronics Superstore', 'Large selection of electronic gadgets', '2024-05-03 12:00:00', NULL,
        '12345678912345', 1),
       ('Fashion Boutique', 'Trendy clothing for all ages', '2024-05-03 10:00:00', NULL, '98765432198765', 2),
       ('Home Appliances Store', 'Appliances for kitchen and home', '2024-05-03 09:00:00', NULL, '45612378945612', 3),
       ('Bookstore', 'Books for all genres', '2024-05-03 08:00:00', NULL, '74185296374185', 4),
       ('Toy Store', 'Toys and games for kids', '2024-05-03 11:00:00', NULL, '96385274196385', 5),
       ('Sports Shop', 'Equipment for all sports', '2024-05-03 07:00:00', NULL, '85274196385274', 6);

INSERT INTO Delivery_Person (firstname, lastname, vehicle, date_of_birth, active_since, disable_since, address_id)
VALUES ('John', 'Smith', 'Van', '1990-05-03 00:00:00', '2024-05-03 08:00:00', NULL, 2),
       ('Emily', 'Johnson', 'Truck', '1985-10-15 00:00:00', '2024-05-03 07:00:00', NULL, 3),
       ('Michael', 'Brown', 'Bicycle', '1992-02-20 00:00:00', '2024-05-03 06:00:00', NULL, 1),
       ('Laura', 'Wilson', 'Motorbike', '1989-07-23 00:00:00', '2024-05-03 09:00:00', NULL, 4),
       ('Daniel', 'Garcia', 'Car', '1991-12-01 00:00:00', '2024-05-03 10:00:00', NULL, 5),
       ('Sophia', 'Martinez', 'Scooter', '1993-04-11 00:00:00', '2024-05-03 11:00:00', NULL, 6);

INSERT INTO Admin (description)
VALUES ('System Administrator'),
       ('Sales Manager'),
       ('HR Manager'),
       ('Finance Manager'),
       ('Marketing Manager'),
       ('Operations Manager');

INSERT INTO Client (firstname, lastname, active_since, disable_since, date_of_birth)
VALUES ('Alice', 'Jones', '2024-05-03 15:00:00', NULL, '1995-08-10 00:00:00'),
       ('Bob', 'Smith', '2024-05-03 14:00:00', NULL, '1992-03-25 00:00:00'),
       ('Emma', 'Davis', '2024-05-03 13:00:00', NULL, '1988-11-30 00:00:00'),
       ('Liam', 'Miller', '2024-05-03 16:00:00', NULL, '1985-06-20 00:00:00'),
       ('Olivia', 'Wilson', '2024-05-03 17:00:00', NULL, '1990-01-15 00:00:00'),
       ('Noah', 'Moore', '2024-05-03 18:00:00', NULL, '1983-09-05 00:00:00');

INSERT INTO client_address (address_id, client_id)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 1),
       (8, 2),
       (9, 3),
       (10, 4),
       (11, 5),
       (12, 6),
       (13, 1),
       (14, 2),
       (15, 3),
       (16, 4),
       (17, 5),
       (18, 6),
       (19, 1),
       (20, 2);

INSERT INTO category_shop (shop_id, category_id)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (1, 4), -- Electronics store also sells books
       (2, 5), -- Fashion boutique also sells toys
       (3, 6); -- Home appliances store also sells sports equipment

INSERT INTO _User (mail, password, client_id, shop_id, delivery_person_id, admin_id)
VALUES ('alice@example.com', 'password123', 1, NULL, NULL, NULL),
       ('bob@example.com', 'password456', NULL, 2, NULL, NULL),
       ('emily@example.com', 'password789', NULL, NULL, 1, NULL),
       ('laura@example.com', 'password101', NULL, NULL, 4, NULL),
       ('daniel@example.com', 'password202', NULL, NULL, 5, NULL),
       ('sophia@example.com', 'password303', NULL, NULL, 6, NULL),
       ('liam@example.com', 'password456', 4, NULL, NULL, NULL),
       ('olivia@example.com', 'password789', 5, NULL, NULL, NULL),
       ('noah@example.com', 'password101', 6, NULL, NULL, NULL),
       ('john@example.com', 'password121', NULL, NULL, NULL, 1),
       ('lila@example.com', 'password123', NULL, NULL, NULL, 2),
       ('titi@example.com', 'password456', NULL, 1, NULL, NULL),
       ('lala@example.com', 'password456', NULL, 4, NULL, NULL),
       ('po@example.com', 'password456', NULL, 5, NULL, NULL),
       ('tinky@example.com', 'password456', NULL, 6, NULL, NULL),
       ('winky@example.com', 'password456', NULL, 3, NULL, NULL);

INSERT INTO Delivery (fee, arrive_at, got, prepared, accepted, delivered, disable, delivery_person_id)
VALUES (10.5, '2024-05-03 14:00:00', TRUE, TRUE, FALSE, FALSE, FALSE, 1),
       (8.75, '2024-05-03 15:00:00', TRUE, TRUE, TRUE, TRUE, FALSE, 2),
       (12.0, '2024-05-03 16:00:00', FALSE, FALSE, FALSE, FALSE, FALSE, 3),
       (9.5, '2024-05-03 17:00:00', TRUE, FALSE, FALSE, FALSE, FALSE, 4),
       (11.25, '2024-05-03 18:00:00', TRUE, TRUE, FALSE, TRUE, FALSE, 5),
       (7.0, '2024-05-03 19:00:00', TRUE, TRUE, TRUE, FALSE, FALSE, 6);

INSERT INTO Product (name, unit_price, description, stock, active_since, disable_since, weight, sizes, for_adults,
                     shop_id)
VALUES ('Laptop', 999.99, 'High-performance laptop', 50, '2024-05-03 10:00:00', NULL, 2.5, 15.0, 1, 1),
       ('Smartphone', 699.99, 'Latest model smartphone', 60, '2024-05-03 12:30:00', NULL, 0.4, 5.5, 1, 1),
       ('Tablet', 499.99, 'Versatile tablet', 40, '2024-05-03 13:00:00', NULL, 1.0, 10.0, 1, 1),
       ('Camera', 299.99, 'Digital camera', 30, '2024-05-03 14:00:00', NULL, 0.5, 8.0, 1, 1),
       ('Headphones', 199.99, 'Noise-cancelling headphones', 70, '2024-05-03 15:00:00', NULL, 0.3, 6.0, 1, 1),
       ('T-Shirt', 29.99, 'Cotton T-shirt', 100, '2024-05-03 09:00:00', NULL, 0.3, 0.5, 1, 2),
       ('Jeans', 49.99, 'Comfortable jeans', 80, '2024-05-03 09:30:00', NULL, 0.5, 1.0, 1, 2),
       ('Jacket', 79.99, 'Warm winter jacket', 50, '2024-05-03 10:00:00', NULL, 1.0, 1.5, 1, 2),
       ('Dress', 59.99, 'Elegant evening dress', 40, '2024-05-03 10:30:00', NULL, 0.5, 1.0, 1, 2),
       ('Shoes', 89.99, 'Stylish sneakers', 60, '2024-05-03 11:00:00', NULL, 0.7, 1.2, 1, 2),
       ('Microwave', 149.99, 'Compact microwave oven', 20, '2024-05-03 11:00:00', NULL, 12.0, 0.5, 0, 3),
       ('Blender', 89.99, 'Powerful blender', 30, '2024-05-03 11:30:00', NULL, 3.0, 2.0, 0, 3),
       ('Toaster', 39.99, 'Two-slice toaster', 25, '2024-05-03 12:00:00', NULL, 1.5, 1.0, 0, 3),
       ('Refrigerator', 599.99, 'Energy-efficient refrigerator', 10, '2024-05-03 12:30:00', NULL, 50.0, 5.0, 0, 3),
       ('Dishwasher', 399.99, 'Quiet dishwasher', 15, '2024-05-03 13:00:00', NULL, 45.0, 4.0, 0, 3),
       ('Novel', 19.99, 'Bestselling fiction', 200, '2024-05-03 08:30:00', NULL, 0.5, 1.0, 0, 4),
       ('Cookbook', 29.99, 'Delicious recipes', 150, '2024-05-03 09:00:00', NULL, 1.0, 1.2, 0, 4),
       ('Science Book', 49.99, 'Educational science book', 100, '2024-05-03 09:30:00', NULL, 2.0, 2.5, 0, 4),
       ('History Book', 39.99, 'Historical events', 120, '2024-05-03 10:00:00', NULL, 1.5, 2.0, 0, 4),
       ('Children Book', 15.99, 'Fun stories for kids', 250, '2024-05-03 10:30:00', NULL, 0.4, 0.8, 0, 4),
       ('Action Figure', 24.99, 'Popular action figure', 150, '2024-05-03 10:30:00', NULL, 0.4, 1.5, 0, 5),
       ('Board Game', 39.99, 'Exciting board game', 100, '2024-05-03 11:00:00', NULL, 2.0, 3.0, 0, 5),
       ('Puzzle', 19.99, '1000-piece puzzle', 200, '2024-05-03 11:30:00', NULL, 1.0, 1.5, 0, 5),
       ('Doll', 29.99, 'Beautiful doll', 150, '2024-05-03 12:00:00', NULL, 0.5, 1.0, 0, 5),
       ('Lego Set', 49.99, 'Lego construction set', 100, '2024-05-03 12:30:00', NULL, 1.5, 2.0, 0, 5),
       ('Basketball', 39.99, 'Standard basketball', 75, '2024-05-03 07:30:00', NULL, 1.2, 7.5, 0, 6),
       ('Football', 29.99, 'Soccer ball', 100, '2024-05-03 08:00:00', NULL, 1.0, 6.5, 0, 6),
       ('Tennis Racket', 79.99, 'Professional tennis racket', 50, '2024-05-03 08:30:00', NULL, 0.6, 3.0, 0, 6),
       ('Golf Clubs', 299.99, 'Complete golf club set', 30, '2024-05-03 09:00:00', NULL, 10.0, 15.0, 0, 6),
       ('Running Shoes', 99.99, 'Lightweight running shoes', 80, '2024-05-03 09:30:00', NULL, 0.8, 2.0, 0, 6);

INSERT INTO _Order (order_at, payed, client_id, delivery_id, ship_to, charge_to)
VALUES ('2024-05-03 10:30:00', TRUE, 1, 1, 1, 1),
       ('2024-05-03 11:45:00', TRUE, 2, 2, 2, 2),
       ('2024-05-03 12:15:00', TRUE, 3, 3, 3, 3),
       ('2024-05-03 13:30:00', TRUE, 4, 4, 4, 4),
       ('2024-05-03 14:45:00', TRUE, 5, 5, 5, 5),
       ('2024-05-03 15:15:00', TRUE, 6, 6, 6, 6),
       ('2024-05-03 16:30:00', TRUE, 1, 4, 2, 1),
       ('2024-05-03 17:45:00', TRUE, 2, 5, 3, 2),
       ('2024-05-03 18:15:00', TRUE, 3, 6, 1, 3);

INSERT INTO product_order (quantity, order_id, product_id)
VALUES (2, 1, 1),
       (3, 2, 2),
       (1, 3, 3),
       (4, 4, 4),
       (2, 5, 5),
       (5, 6, 6),
       (1, 7, 7),
       (2, 8, 8),
       (3, 9, 9);
