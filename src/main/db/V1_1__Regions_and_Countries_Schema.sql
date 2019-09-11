CREATE TABLE MASTER.regions
(
    region_id int NOT NULL,
    region_name VARCHAR( 50 ) NOT NULL,
    CONSTRAINT region_pk PRIMARY KEY (region_id)
);

CREATE SEQUENCE MASTER.region_seq START WITH 1;

CREATE TABLE MASTER.countries
(
    country_id   CHAR(2) PRIMARY KEY  ,
    country_name VARCHAR( 40 ) NOT NULL,
    region_id    int                 , -- fk
    CONSTRAINT fk_countries_regions FOREIGN KEY( region_id )
        REFERENCES MASTER.regions( region_id )
            ON DELETE CASCADE
);

