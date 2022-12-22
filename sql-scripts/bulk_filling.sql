set serveroutput on;

declare

v_rezepte NUMBER := 50;
v_rezept_schritte NUMBER := 100;
v_zutat NUMBER := 100;
v_index NUMBER;
v_inventur NUMBER := 50;
v_inventur_item NUMBER := 100;
v_speise_karte NUMBER := 50;
v_bestellungen := 50;
v_kasser NUMBER := 50; 

v_schritt_id NUMBER;
v_anleitung NUMBER;
v_rezept_id NUMBER;
v_zutat_id NUMBER;
v_index NUMBER;

begin
FOR v_index IN 1 ..  v_rezepte LOOP


        v_rezept_id := v_index;

        INSERT INTO Rezept(rezept_id, name, beschreibung) VALUES(v_rezept_id, "Rezept 22", "Ein weiteres leckeres Rezept");
    

        FOR v_children_produkt_index IN 1 .. v_maxChildren  LOOP
           
            v_produkt_name:= 'C'||to_char(v_index)||'_P'||to_char(v_children_produkt_index);
            v_produkt_time_end:= v_produkt_time;
            select v_produkt_time+1 into v_produkt_time_end from dual;
            Insert into product VALUES(
                v_produkt_id,
                v_produkt_name,
                v_index,
                22,
                1 ,
                v_produkt_time,
                v_produkt_time_end 
            ); 
            v_produkt_time:=v_produkt_time_end;
            v_produkt_id:=v_produkt_id+1; 
        END LOOP;
    END LOOP; 
end;