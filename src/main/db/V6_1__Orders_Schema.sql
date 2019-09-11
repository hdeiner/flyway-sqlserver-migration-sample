CREATE TABLE [MASTER].orders
(
    order_id INT UNIQUE,
    customer_id INT NOT NULL, -- fk
    status      VARCHAR( 20 ) NOT NULL ,
    salesman_id INT         , -- fk
    order_date  DATE NOT NULL          ,
    CONSTRAINT fk_orders_customers
        FOREIGN KEY( customer_id )
            REFERENCES customers( customer_id )
                ON DELETE CASCADE,
    CONSTRAINT fk_orders_employees
        FOREIGN KEY( salesman_id )
            REFERENCES employees( employee_id )
                ON DELETE SET NULL
);

CREATE SEQUENCE [MASTER].order_seq START WITH 100;

CREATE TABLE [MASTER].order_items
(
    order_item_id INT ,
    order_id   INT                                , -- fk
    item_id    INT                                ,
    product_id INT NOT NULL                       , -- fk
    quantity   INT NOT NULL                        ,
    unit_price INT NOT NULL                        ,
    CONSTRAINT pk_order_items
        PRIMARY KEY( order_id, item_id ),
    CONSTRAINT fk_order_items_products
        FOREIGN KEY( product_id )
            REFERENCES products( product_id )
                ON DELETE CASCADE,
    CONSTRAINT fk_order_items_orders
        FOREIGN KEY( order_id )
            REFERENCES orders( order_id )
                ON DELETE CASCADE
);

CREATE SEQUENCE [MASTER].order_item_seq START WITH 1;