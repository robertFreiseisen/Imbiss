
CREATE TABLE supplier
( supplier_id numeric(10) NOT NULL,
  supplier_name varchar2(50) NOT NULL,
  contact_name varchar2(50),
  CONSTRAINT supplier_unique UNIQUE (supplier_id, supplier_name)
);

ALTER TABLE Inventur 
ADD CONSTRAINT constraint_name UNIQUE (column1, column2, ... column_n);

ALTER TABLE Haus ADD CONSTRAINT haus_id_PM PRIMARY KEY
 (haus_id);
