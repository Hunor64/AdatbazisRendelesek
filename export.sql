INSERT INTO vevők (Vevő_Név,Vevő_Cím) 
SELECT DISTINCT Vevő_Név,Vevő_Cím FROM rendelések;



INSERT INTO termékek (Termék_ID,Termék_Név,Kategória,Egységár) 
SELECT Termék_ID,Termék_Név,Kategória,Egységár FROM rendelések;





INSERT INTO eladások (Rendelés_ID, Termék_ID, Mennyiség, Rendelés_Dátuma, Vevő_Id)
SELECT r.Rendelés_ID, r.Termék_ID, r.Mennyiség, r.Rendelés_Dátuma, v.Vevő_Id
FROM rendelések r
JOIN vevők v ON r.Vevő_Név = v.Vevő_Név AND r.Vevő_Cím = v.Vevő_Cím;