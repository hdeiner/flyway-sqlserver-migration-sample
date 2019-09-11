CREATE TABLE [MASTER].product_categories
(
    category_id INT UNIQUE,
    category_name VARCHAR( 255 ) NOT NULL
);

CREATE SEQUENCE [MASTER].product_categories_seq START WITH 6;

CREATE TABLE [MASTER].products
(
    product_id    INT UNIQUE,
    product_name  VARCHAR( 255 ) NOT NULL,
    description   VARCHAR( 2000 )        ,
    standard_cost INT         ,
    list_price    INT          ,
    category_id   INT NOT NULL         ,
    CONSTRAINT fk_products_categories
        FOREIGN KEY( category_id )
            REFERENCES product_categories( category_id )
                ON DELETE CASCADE
);

CREATE SEQUENCE [MASTER].product_seq START WITH 289;