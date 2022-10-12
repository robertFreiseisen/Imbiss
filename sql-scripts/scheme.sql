CREATE TABLE Zutat (
    zutat_id NUMBER PRIMARY KEY ,
    name VARCHAR2(25)  
);

CREATE TABLE Inventur (
    inventur_id NUMBER PRIMARY KEY, 
    name VARCHAR2(25)
);

CREATE TABLE InventurItem (
    zutat_id NUMBER ,
    inventur_id NUMBER,
    ablaufdatum TIMESTAMP,
    anzahl NUMBER,

    FOREIGN KEY (zutat_id)
        REFERENCES Zutat(zutat_id)
        ON DELETE CASCADE
);

CREATE TABLE Rezept (
    rezept_id NUMBER PRIMARY KEY,
    zutat_id NUMBER,
    name VARCHAR2(25),
    beschreibung VARCHAR2(50),

    FOREIGN KEY (zutat_id)
        REFERENCES Zutat(zutat_id)
        ON DELETE CASCADE
);

CREATE TABLE RezeptSchritt (
    schritt_id NUMBER PRIMARY KEY,
    rezept_id NUMBER,
    anleitung VARCHAR2(50),

    FOREIGN KEY (rezept_id)
        REFERENCES Rezept(rezept_id)
);

CREATE TABLE Speisekarte(
    speisekarten_id NUMBER PRIMARY KEY,
    rezept_id NUMBER,
    preis DECIMAL, 
    beschreibung VARCHAR2(50),

    
    FOREIGN KEY (rezept_id)
        REFERENCES Rezept(rezept_id)
);

CREATE TABLE Kunde (
    kunden_id NUMBER PRIMARY KEY,
    vorname VARCHAR2(25),
    lastname VARCHAR2(25)
);

CREATE TABLE Bestellung (
    bestell_id NUMBER PRIMARY KEY, 
    kunden_id NUMBER,
    anzahl NUMBER,
    gesamt_preis DECIMAL,
    FOREIGN KEY (kunden_id)
        REFERENCES Kunde(kunden_id)
);

CREATE TABLE BestellungsItem(
    bestell_id NUMBER,
    speisekarten_id NUMBER,
    anzahl NUMBER,
    price DECIMAL,
    FOREIGN KEY (bestell_id)
        REFERENCES Bestellung(bestell_id),
    FOREIGN KEY (speisekarten_id)
        REFERENCES Speisekarte(speisekarten_id)
);

CREATE UNIQUE INDEX BestellungsItem_pk
    ON BestellungsItem (bestell_id, speisekarten_id);

CREATE TABLE Kassa (
    kassa_id NUMBER PRIMARY KEY,
    bestell_id NUMBER,
    einnahmen DECIMAL, 
    datum TIMESTAMP,

    FOREIGN KEY (bestell_id)
        REFERENCES Bestellung(bestell_id)

);

CREATE TABLE Angestellter (
    angestellten_id NUMBER PRIMARY KEY,
    vorname VARCHAR2(25),
    nachname VARCHAR2(25),
    geburtstag TIMESTAMP,
    gehalt DECIMAL
);

CREATE TABLE Lieferung(
    liefer_id NUMBER PRIMARY KEY, 
    bestell_id NUMBER,
    angestellten_id NUMBER,
    lieferdatum TIMESTAMP,
    postleitzahl NUMBER,
    strasse VARCHAR2(25),
    adresse VARCHAR2(25),
    
    FOREIGN KEY (bestell_id)
        REFERENCES Bestellung(bestell_id),
    FOREIGN KEY (angestellten_id)
        REFERENCES Angestellter(angestellten_id)
);


CREATE TABLE Schichtplan (
    schichtplan_id NUMBER PRIMARY KEY,
    angestellten_id NUMBER,
    beginn TIMESTAMP,
    ende TIMESTAMP
);