CREATE TABLE users
(
    user_id  BIGSERIAL PRIMARY KEY,
    username VARCHAR(50)  NOT NULL,
    password    VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    role VARCHAR(10) NOT NULL,
    gender VARCHAR(10) NOT NULL
    -- Other user-related fields
);
CREATE TABLE carts
(
    cart_id    BIGSERIAL PRIMARY KEY,
    user_id    BIGINT REFERENCES users (user_id) NOT NULL,
    created_at TIMESTAMP DEFAULT current_timestamp
);
CREATE TABLE products
(
    product_id  BIGSERIAL PRIMARY KEY,
    product_name        VARCHAR(100)   NOT NULL,
    description TEXT,
    price       DECIMAL(10, 2) NOT NULL
    -- Other product-related fields
);

CREATE TABLE users_products
(
    user_product_id  BIGSERIAL PRIMARY KEY,
    user_id BIGINT references users (user_id) NOT NULL,
    product_id  BIGINT references products (product_id) NOT NULL
    -- Other product-related fields
);



CREATE TABLE carts_items
(
    cart_item_id BIGSERIAL PRIMARY KEY,
    cart_id      BIGINT REFERENCES carts (cart_id)       NOT NULL,
    product_id   BIGINT REFERENCES products (product_id) NOT NULL,
    quantity     INT                                  NOT NULL
    -- Other cart item-related fields
);
drop table users CASCADE;
drop table carts_items CASCADE;
drop table products CASCADE;
drop table users_products CASCADE;
drop table carts CASCADE;

/////
DML

INSERT INTO products (product_name, description, price) VALUES ('Goods 1','description 1',100.5);
INSERT INTO products (product_name, description, price) VALUES ('Goods 2','description 2',200.5);
INSERT INTO products (product_name, description, price) VALUES ('Goods 3','description 3',300.5);
INSERT INTO products (product_name, description, price) VALUES ('Goods 4','description 4',400.5);

INSERT INTO users (username, password, email, role, gender)
VALUES ('admin1', 'password1', 'admin1@example.com', 'ADMIN', 'MALE'),
       ('user1', 'password1', 'user1@example.com', 'USER', 'FEMALE'),
       ('user2', 'password2', 'user2@example.com', 'USER', 'MALE'),
       ('admin2', 'password2', 'admin2@example.com', 'ADMIN', 'FEMALE'),
       ('user3', 'password3', 'user3@example.com', 'USER', 'FEMALE'),
       ('admin3', 'password3', 'admin3@example.com', 'ADMIN', 'MALE'),
       ('user4', 'password4', 'user4@example.com', 'USER', 'FEMALE'),
       ('user5', 'password5', 'user5@example.com', 'USER', 'MALE'),
       ('admin4', 'password4', 'admin4@example.com', 'ADMIN', 'FEMALE'),
       ('user6', 'password6', 'user6@example.com', 'USER', 'MALE');



INSERT INTO users_products (user_id, product_id) VALUES (11,2);
INSERT INTO users_products (user_id, product_id) VALUES (10,1);
INSERT INTO users_products (user_id, product_id) VALUES (9,3);
INSERT INTO users_products (user_id, product_id) VALUES (8,4);
INSERT INTO users_products (user_id, product_id) VALUES (7,1);
INSERT INTO users_products (user_id, product_id) VALUES (6,2);
INSERT INTO users_products (user_id, product_id) VALUES (5,3);
INSERT INTO users_products (user_id, product_id) VALUES (4,4);
INSERT INTO users_products (user_id, product_id) VALUES (3,1);
INSERT INTO users_products (user_id, product_id) VALUES (2,2);
INSERT INTO users_products (user_id, product_id) VALUES (1,3);
