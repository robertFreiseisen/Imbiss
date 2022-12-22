set serveroutput on;

declare

v_rezepte NUMBER := 50;
v_rezept_schritte NUMBER := 100;
v_zutat NUMBER := 100;
v_index NUMBER;
v_kunden NUMBER := 50;
v_inventur NUMBER := 50;
v_inventur_item NUMBER := 100;
v_speise_karte NUMBER := 50;
v_bestellungen := 50;
v_kasser NUMBER := 50; 

v_schritt_id NUMBER;
v_kunden_id NUMBER;
v_bestell_id NUMBER;
v_kassa_id NUMBER;
v_rezept_id NUMBER;
v_zutat_id NUMBER;
v_index_1 NUMBER;

BEGIN
    FOR v_index IN 1 ..  v_rezepte LOOP


        v_rezept_id := v_index;
    
        INSERT INTO Rezept(rezept_id, name, beschreibung) VALUES(v_rezept_id, 'Rezept', 'Ein weiteres leckeres Rezept');
    

        FOR v_schritt_id IN 1 .. v_rezept_schritte  LOOP
            INSERT INTO REZEPTSCHRITT(SCHRITT_ID, REZEPT_ID, ANLEITUNG) VALUES (v_schritt_id, v_rezept_id, 'Schneide die Gurke klein her');
        END LOOP;
    END LOOP; 

    FOR v_kunden_id IN 1 .. v_kunden LOOP

        INSERT INTO KUNDE (KUNDEN_ID, VORNAME, NACHNAME) VALUES(v_kunden_id, 'Max', 'Mustermann');

        FOR v_bestell_id IN 1 .. v_bestellungen LOOP
            INSERT INTO BESTELLUNG (BESTELL_ID, KUNDEN_ID, ANZAHL, GESAMT_PREIS) VALUES(v_bestell_id, v_kunden_id, 5 , '100.80');

            FOR v_bestell_item_id IN 1 .. 5 LOOP
                INSERT INTO BESTELLUNGSITEM (BESTELL_ID, SPEISEKARTEN_ID, ANZAHL, PRICE) VALUES (v_bestell_item_id, 2, '11.03');
            END LOOP;
        END LOOP;

    END LOOP;
END;