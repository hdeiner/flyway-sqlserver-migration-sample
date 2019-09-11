CREATE TABLE [MASTER].employees
  (
    employee_id INT UNIQUE,
    first_name VARCHAR( 255 ) NOT NULL,
    last_name  VARCHAR( 255 ) NOT NULL,
    email      VARCHAR( 255 ) NOT NULL,
    phone      VARCHAR( 50 ) NOT NULL ,
    hire_date  DATE NOT NULL          ,
    manager_id INT       , -- fk
    job_title  VARCHAR( 255 ) NOT NULL
  );

  CREATE SEQUENCE [MASTER].employee_seq START WITH 1;