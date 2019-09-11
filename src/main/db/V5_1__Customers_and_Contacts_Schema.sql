CREATE TABLE [MASTER].customers
(
    customer_id INT UNIQUE,
    name         VARCHAR( 255 ) NOT NULL,
    address      VARCHAR( 255 )         ,
    website      VARCHAR( 255 )         ,
    credit_limit INT
);

CREATE SEQUENCE [MASTER].customer_seq START WITH 1;

CREATE TABLE [MASTER].contacts
(
    contact_id INT UNIQUE,
    first_name  VARCHAR( 255 ) NOT NULL,
    last_name   VARCHAR( 255 ) NOT NULL,
    email       VARCHAR( 255 ) NOT NULL,
    phone       VARCHAR( 20 )          ,
    customer_id INT                  ,
    CONSTRAINT fk_contacts_customers
        FOREIGN KEY( customer_id )
            REFERENCES customers( customer_id )
                ON DELETE CASCADE
);

CREATE SEQUENCE [MASTER].contact_seq START WITH 1;