CREATE TABLE [MASTER].locations
(
    location_id INT NOT NULL,
    address     VARCHAR( 255 ) NOT NULL,
    postal_code VARCHAR( 20 )          ,
    city        VARCHAR( 50 )          ,
    state       VARCHAR( 50 )          ,
    country_id  CHAR( 2 )               , -- fk
    CONSTRAINT fk_locations_countries
        FOREIGN KEY( country_id )
            REFERENCES countries( country_id )
                ON DELETE CASCADE,
    CONSTRAINT location_pk PRIMARY KEY (location_id)
);

CREATE SEQUENCE [MASTER].location_seq START WITH 1;

CREATE TABLE [MASTER].warehouses
(
    warehouse_id INT NOT NULL,
    warehouse_name VARCHAR( 255 ) ,
    location_id    INT, -- fk
    CONSTRAINT fk_warehouses_locations
        FOREIGN KEY( location_id )
            REFERENCES locations( location_id )
                ON DELETE CASCADE
);