CREATE TABLE Zutat (
    zutat_id NUMBER  ,
    name VARCHAR2(25)  
);

CREATE TABLE Inventur (
    inventur_id NUMBER, 
    name VARCHAR2(25)
);

CREATE TABLE InventurItem (
    zutat_id NUMBER ,
    inventur_id NUMBER,
    ablaufdatum TIMESTAMP,
    anzahl NUMBER
);

CREATE TABLE Rezept (
    rezept_id NUMBER ,
    zutat_id NUMBER,
    name VARCHAR2(25),
    beschreibung VARCHAR2(50)
);

CREATE TABLE RezeptSchritt (
    schritt_id NUMBER ,
    rezept_id NUMBER,
    anleitung VARCHAR2(50)
);

CREATE TABLE Speisekarte(
    speisekarten_id NUMBER ,
    rezept_id NUMBER,
    preis DECIMAL, 
    beschreibung VARCHAR2(50)
);

CREATE TABLE Kunde (
    kunden_id NUMBER ,
    vorname VARCHAR2(25),
    lastname VARCHAR2(25)
);

CREATE TABLE Bestellung (
    bestell_id NUMBER , 
    kunden_id NUMBER,
    anzahl NUMBER,
    gesamt_preis DECIMAL
);

CREATE TABLE BestellungsItem(
    bestell_id NUMBER,
    speisekarten_id NUMBER,
    anzahl NUMBER,
    price DECIMAL
);

CREATE UNIQUE INDEX BestellungsItem_pk
    ON BestellungsItem (bestell_id, speisekarten_id);

CREATE TABLE Kassa (
    kassa_id NUMBER ,
    bestell_id NUMBER,
    einnahmen DECIMAL, 
    datum TIMESTAMP
);

CREATE TABLE Angestellter (
    angestellten_id NUMBER ,
    vorname VARCHAR2(25),
    nachname VARCHAR2(25),
    geburtstag TIMESTAMP,
    gehalt DECIMAL
);

CREATE TABLE Lieferung(
    liefer_id NUMBER , 
    bestell_id NUMBER,
    angestellten_id NUMBER,
    lieferdatum TIMESTAMP,
    postleitzahl NUMBER,
    strasse VARCHAR2(25),
    adresse VARCHAR2(25)
);


CREATE TABLE Schichtplan (
    schichtplan_id NUMBER ,
    angestellten_id NUMBER,
    beginn TIMESTAMP,
    ende TIMESTAMP
);