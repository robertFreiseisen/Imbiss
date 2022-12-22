INSERT INTO Zutat(zutat_id, name) VALUES(1, 'Gurke');
INSERT INTO Zutat(zutat_id, name) VALUES(2, 'Kartoffeln');
INSERT INTO Zutat(zutat_id, name) VALUES(3, 'Mais');
INSERT INTO Zutat(zutat_id, name) VALUES(4, 'Fladenbrot');
INSERT INTO Zutat(zutat_id, name) VALUES(5, 'Joghurt');


INSERT INTO Inventur(inventur_id, name) VALUES(1, 'Inventur am 01.10.2022');
INSERT INTO Inventur(inventur_id, name) VALUES(2, 'Inventur am 05.10.2022');
INSERT INTO Inventur(inventur_id, name) VALUES(3, 'Inventur am 09.10.2022');
INSERT INTO Inventur(inventur_id, name) VALUES(4, 'Inventur am 15.10.2022');
INSERT INTO Inventur(inventur_id, name) VALUES(5, 'Inventur am 17.11.2022');

INSERT INTO InventurItem(zutat_id, inventur_id, ablaufdatum, anzahl) VALUES (1,1,TO_TIMESTAMP('2022-10-11 06:14:00', 'YYYY-MM-DD HH24:MI:SS.FF'), 10);
INSERT INTO InventurItem(zutat_id, inventur_id, ablaufdatum, anzahl) VALUES (2,1,TO_TIMESTAMP('2022-10-20 06:13:00', 'YYYY-MM-DD HH24:MI:SS.FF'), 10);
INSERT INTO InventurItem(zutat_id, inventur_id, ablaufdatum, anzahl) VALUES (3,1,TO_TIMESTAMP('2022-10-22 06:41:00', 'YYYY-MM-DD HH24:MI:SS.FF'), 10);
INSERT INTO InventurItem(zutat_id, inventur_id, ablaufdatum, anzahl) VALUES (4,1,TO_TIMESTAMP('2022-10-01 06:15:00', 'YYYY-MM-DD HH24:MI:SS.FF'), 10);
INSERT INTO InventurItem(zutat_id, inventur_id, ablaufdatum, anzahl) VALUES (5,1,TO_TIMESTAMP('2022-10-10 06:16:00', 'YYYY-MM-DD HH24:MI:SS.FF'), 10);

INSERT INTO InventurItem(zutat_id, inventur_id, ablaufdatum, anzahl) VALUES (1,2,TO_TIMESTAMP('2022-10-11 06:14:00', 'YYYY-MM-DD HH24:MI:SS.FF'), 10);
INSERT INTO InventurItem(zutat_id, inventur_id, ablaufdatum, anzahl) VALUES (2,2,TO_TIMESTAMP('2022-10-20 06:13:00', 'YYYY-MM-DD HH24:MI:SS.FF'), 10);
INSERT INTO InventurItem(zutat_id, inventur_id, ablaufdatum, anzahl) VALUES (3,2,TO_TIMESTAMP('2022-10-22 06:41:00', 'YYYY-MM-DD HH24:MI:SS.FF'), 10);
INSERT INTO InventurItem(zutat_id, inventur_id, ablaufdatum, anzahl) VALUES (4,2,TO_TIMESTAMP('2022-10-01 06:15:00', 'YYYY-MM-DD HH24:MI:SS.FF'), 10);
INSERT INTO InventurItem(zutat_id, inventur_id, ablaufdatum, anzahl) VALUES (5,2,TO_TIMESTAMP('2022-10-10 06:16:00', 'YYYY-MM-DD HH24:MI:SS.FF'), 10);

INSERT INTO InventurItem(zutat_id, inventur_id, ablaufdatum, anzahl) VALUES (1,3,TO_TIMESTAMP('2022-10-11 06:14:00', 'YYYY-MM-DD HH24:MI:SS.FF'), 10);
INSERT INTO InventurItem(zutat_id, inventur_id, ablaufdatum, anzahl) VALUES (2,3,TO_TIMESTAMP('2022-10-20 06:13:00', 'YYYY-MM-DD HH24:MI:SS.FF'), 10);
INSERT INTO InventurItem(zutat_id, inventur_id, ablaufdatum, anzahl) VALUES (3,3,TO_TIMESTAMP('2022-10-22 06:41:00', 'YYYY-MM-DD HH24:MI:SS.FF'), 10);
INSERT INTO InventurItem(zutat_id, inventur_id, ablaufdatum, anzahl) VALUES (4,3,TO_TIMESTAMP('2022-10-01 06:15:00', 'YYYY-MM-DD HH24:MI:SS.FF'), 10);
INSERT INTO InventurItem(zutat_id, inventur_id, ablaufdatum, anzahl) VALUES (5,3,TO_TIMESTAMP('2022-10-10 06:16:00', 'YYYY-MM-DD HH24:MI:SS.FF'), 10);

INSERT INTO InventurItem(zutat_id, inventur_id, ablaufdatum, anzahl) VALUES (1,4,TO_TIMESTAMP('2022-10-11 06:14:00', 'YYYY-MM-DD HH24:MI:SS.FF'), 10);
INSERT INTO InventurItem(zutat_id, inventur_id, ablaufdatum, anzahl) VALUES (2,4,TO_TIMESTAMP('2022-10-20 06:13:00', 'YYYY-MM-DD HH24:MI:SS.FF'), 10);
INSERT INTO InventurItem(zutat_id, inventur_id, ablaufdatum, anzahl) VALUES (3,4,TO_TIMESTAMP('2022-10-22 06:41:00', 'YYYY-MM-DD HH24:MI:SS.FF'), 10);
INSERT INTO InventurItem(zutat_id, inventur_id, ablaufdatum, anzahl) VALUES (4,4,TO_TIMESTAMP('2022-10-01 06:15:00', 'YYYY-MM-DD HH24:MI:SS.FF'), 10);
INSERT INTO InventurItem(zutat_id, inventur_id, ablaufdatum, anzahl) VALUES (5,4,TO_TIMESTAMP('2022-10-10 06:16:00', 'YYYY-MM-DD HH24:MI:SS.FF'), 10);

INSERT INTO InventurItem(zutat_id, inventur_id, ablaufdatum, anzahl) VALUES (1,5,TO_TIMESTAMP('2022-11-11 06:14:00', 'YYYY-MM-DD HH24:MI:SS.FF'), 10);
INSERT INTO InventurItem(zutat_id, inventur_id, ablaufdatum, anzahl) VALUES (2,5,TO_TIMESTAMP('2022-11-20 06:13:00', 'YYYY-MM-DD HH24:MI:SS.FF'), 10);
INSERT INTO InventurItem(zutat_id, inventur_id, ablaufdatum, anzahl) VALUES (3,5,TO_TIMESTAMP('2022-11-22 06:41:00', 'YYYY-MM-DD HH24:MI:SS.FF'), 10);
INSERT INTO InventurItem(zutat_id, inventur_id, ablaufdatum, anzahl) VALUES (4,5,TO_TIMESTAMP('2022-11-01 06:15:00', 'YYYY-MM-DD HH24:MI:SS.FF'), 10);
INSERT INTO InventurItem(zutat_id, inventur_id, ablaufdatum, anzahl) VALUES (5,5,TO_TIMESTAMP('2022-11-10 06:16:00', 'YYYY-MM-DD HH24:MI:SS.FF'), 10);
