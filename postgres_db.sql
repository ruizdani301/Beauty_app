-- script that create database
-- cat postgres_db.sql | sudo -u postgres psql
\c bb_products;

SET session_replication_role = 'replica';

-- Order category OK
-- | category_id | name_category |
INSERT INTO category VALUES (1,'gel'),(2,'shampoo'),(3,'reparador'),(4,'otros');

-- Order mark OK
-- | mark_id | name_mark |
INSERT INTO mark VALUES (1,'marcell france'),(2,'bella'),(3,'natura'),(4,'men');

-- Order products OK
--  | product_id | name_product | category_id_id | mark_id_id |
INSERT INTO products VALUES (1,'shammpoo aguacate',2,1),
                              (2,'shammpoo caspa',2,3),
                              (3,'gel moco gorilla',1,4),
                              (4,'reparador puntas',3,2),
                              (5,'aceite de coco',3,2),
                              (6,'gel marcell france',1,1),
                              (7,'keratina cojin',3,3),
                              (8,'gel ego',1,4),
                              (9,'shammpoo tinte rojo',2,2),
                              (10,'monas nina',4,2);

-- Order providers OK
-- | provider_id | provider_name | phone | provider_address |
INSERT INTO providers VALUES (1,'Surtibelleza',2123,'calle 1'),
                               (2,'Nelly Narvaez',5486,'calle 2'),
                               (3,'Casa del peluquero',5657,'calle 3'),
                               (4,'Spayzon',5456,'calle 4');

-- Order purchases OK
-- | purchase_id | purchase_date | factura | provider_id_id |
INSERT INTO purchases VALUES (1,'2022-02-01 02:17:06','SB-01',1),
                               (2,'2022-02-02 02:17:06','S-01',2),
                               (3,'2022-03-01 02:17:06','S-01',2);

-- Order stock OK
-- | stock_id | purchase_price | sales_price | total | amount | sales_st | product_id_id | purchase_id_id |
INSERT INTO stock VALUES (1,10000,13000,10,9,1,3,1),   
                           (2,3000,5000,20,10,10,8,1),
                           (3,7000,10000,15,10,5,6,1),
                           (4,15000,20000,5,5,0,1,2), 
                           (5,14000,19000,10,8,2,2,2),
                           (6,16000,21000,4,4,0,1,3);

-- Order sales OK
-- | sale_id | sale_date | amount | price | product_id_id | stock_id_id |
INSERT INTO sales VALUES (1,'2022-02-05 02:17:06',2,20000,1,4),
                           (2,'2022-02-08 02:17:06',1,13000,3,1),
                           (3,'2022-02-09 02:17:06',3,10000,6,3),
                           (4,'2022-02-09 02:50:06',2,20000,1,4),
                           (5,'2022-02-15 02:17:06',5,5000,8,2),
                           (6,'2022-02-18 02:17:06',2,19000,2,5),
                           (7,'2022-02-25 02:17:06',1,20000,1,4),
                           (8,'2022-03-02 02:17:06',5,5000,8,2), 
                           (9,'2022-03-10 02:17:06',4,21000,1,6),
                           (10,'2022-02-10 02:17:06',2,10000,6,3);

SET session_replication_role = 'origin';

SELECT * FROM category;
SELECT * FROM mark;
SELECT * FROM products;
SELECT * FROM providers;
SELECT * FROM purchases; 
SELECT * FROM stock;
SELECT * FROM sales;
