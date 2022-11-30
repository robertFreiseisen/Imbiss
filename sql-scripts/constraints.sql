------------------Zutat Table------------------
ALTER TABLE Zutat ADD CONSTRAINT zutat_pk PRIMARY KEY (zutat_id);
-----------------------------------------------

------------------Inventur Table------------------
ALTER TABLE Inventur ADD CONSTRAINT inventur_pk PRIMARY KEY (inventur_id);
--------------------------------------------------

------------------InventurItem Table------------------
ALTER TABLE InventurItem ADD CONSTRAINT inventuritem_zutat_fk FOREIGN KEY (inventur_id) REFERENCES Inventur(inventur_id);
-----------------------------------------------

------------------Rezept Table------------------
ALTER TABLE Rezept ADD CONSTRAINT rezept_pk PRIMARY KEY (rezept_id);
ALTER TABLE Rezept ADD CONSTRAINT rezept_zutat_fk FOREIGN KEY (zutat_id) REFERENCES Zutat(zutat_id) ON DELEDE CASCADE;
-----------------------------------------------

------------------Rezeptschritt Table------------------
ALTER TABLE Rezeptschritt ADD CONSTRAINT rezeptschritt_pk PRIMARY KEY (schritt_id);
ALTER TABLE Rezeptschritt ADD CONSTRAINT rezeptschritt_rezept_fk FOREIGN KEY (rezept_id) REFERENCES Rezept(rezept_id);
-----------------------------------------------

------------------Speisekarte Table------------------
ALTER TABLE Speisekarte ADD CONSTRAINT speisekarte_pk PRIMARY KEY (speisekarten_id);
ALTER TABLE Speisekarte ADD CONSTRAINT speisekarte_rezept_fk FOREIGN KEY (rezept_id) REFERENCES Rezept(rezept_id);
-----------------------------------------------

------------------Kunde Table------------------
ALTER TABLE Kunde ADD CONSTRAINT kunde_pk PRIMARY KEY (kunden_id);
-----------------------------------------------

------------------Bestellung Table------------------
ALTER TABLE Bestellung ADD CONSTRAINT bestellung_pk PRIMARY KEY (bestell_id);
ALTER TABLE Bestellung ADD CONSTRAINT bestellung_kunde_fk FOREIGN KEY (kunden_id) REFERNCES Kunde(kunden_id);
-----------------------------------------------

------------------BestellungsItem Table------------------
ALTER TABLE BestellungsItem ADD CONSTRAINT bestellungsitem_bestellung_fk FOREIGN KEY (bestell_id) REFERENCES Bestellung(bestell_id);
ALTER TABLE BestellungsItem ADD CONSTRAINT bestellungsitem_speisekarten_fk FOREIGN KEY (speisekarten_id) REFERENCES Speisekarte(speisekarten_id);
-----------------------------------------------

------------------Kassa Table------------------
ALTER TABLE Kassa ADD CONSTRAINT kassa_pk PRIMARY KEY (kassa_id);
ALTER TABLE Kassa ADD CONSTRAINT kassa_bestellung_fk FOREIGN KEY (bestell_id) REFERENCES Bestellung(bestell_id);

-----------------------------------------------

------------------Angestellter Table------------------
ALTER TABLE Angestellter ADD CONSTRAINT angestellter_pk PRIMARY KEY (angestellten_id);
-----------------------------------------------

------------------Lieferung Table------------------
ALTER TABLE Lieferung ADD CONSTRAINT lieferung_pk PRIMARY KEY (liefer_id);

ALTER TABLE Lieferung ADD CONSTRAINT lieferung_bestellung_fk FOREIGN KEY (bestell_id) REFERENCES Bestellung(bestell_id);
ALTER TABLE Lieferung ADD CONSTRAINT lieferung_angestellter_fk FOREIGN KEY (angestellten_id) REFERENCES Angestellter(angestellten_id);

-----------------------------------------------

------------------Schichtplan Table------------------
ALTER TABLE Schichtplan ADD CONSTRAINT schichtplan_pk PRIMARY KEY (schichtplan_id);
-----------------------------------------------



