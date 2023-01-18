-- script that fills the database
-- cat create_db_bb.sql | sudo -u postgres psql

DROP DATABASE "bb_products";
SELECT 'CREATE DATABASE bb_products'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'bb_products')\gexec
\l
\c bb_products

CREATE TABLE IF NOT EXISTS category (
    category_id SERIAL PRIMARY KEY,
    name_category VARCHAR(30) NOT NULL,
    CHECK (category_id>=0)
);

CREATE TABLE IF NOT EXISTS mark (
    mark_id SERIAL PRIMARY KEY,
    name_mark VARCHAR(30) NOT NULL,
   CHECK (mark_id>=0)
);

CREATE TABLE IF NOT EXISTS products (
    product_id SERIAL PRIMARY KEY,
    name_product VARCHAR(30) NOT NULL,
    category_id INT NOT NULL,
    mark_id INT NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category (category_id),
    FOREIGN KEY (mark_id) REFERENCES mark (mark_id),
    CHECK (product_id>=0),
    CHECK (category_id>=0),
    CHECK (mark_id>=0)
);

CREATE TABLE IF NOT EXISTS providers (
    provider_id SERIAL NOT NULL,
    provider_name VARCHAR(30) NOT NULL,
    phone VARCHAR(25) NOT NULL,
    provider_address VARCHAR(50) NOT NULL,
    PRIMARY KEY (provider_id),
    CHECK (provider_id>=0)
);

CREATE TABLE IF NOT EXISTS purchases (
    purchase_id SERIAL NOT NULL,
    provider_id INT NOT NULL,
    purchase_date DATE NOT NULL,
    factura VARCHAR(10) NOT NULL,
    FOREIGN KEY (provider_id) REFERENCES providers (provider_id),
    PRIMARY KEY (purchase_id),
    CHECK (purchase_id>=0),
    CHECK (provider_id>=0)
);

CREATE TABLE IF NOT EXISTS stock (
    stock_id SERIAL NOT NULL,
    purchase_id INT NOT NULL,
    product_id INT NOT NULL,
    purchase_price INT NOT NULL,
    sales_price INT NOT NULL,
    amount INT NOT NULL,
    sales_st INT,
    FOREIGN KEY (product_id) REFERENCES products (product_id),
    FOREIGN KEY (purchase_id) REFERENCES purchases (purchase_id),
    PRIMARY KEY (stock_id),
    CHECK (stock_id>=0),
    CHECK (purchase_id>=0),
    CHECK (product_id>=0)
);

CREATE TABLE IF NOT EXISTS sales (
    sale_id SERIAL NOT NULL,
    sale_date DATE NOT NULL,
    stock_id INT NOT NULL,
    product_id INT NOT NULL,
    amount INT NOT NULL,
    FOREIGN KEY (stock_id) REFERENCES stock (stock_id),
    FOREIGN KEY (product_id) REFERENCES products (product_id),
    PRIMARY KEY (sale_id),
    CHECK (sale_id>=0),
    CHECK (stock_id>=0)
);

\l DATABASES;
\dt TABLES;
