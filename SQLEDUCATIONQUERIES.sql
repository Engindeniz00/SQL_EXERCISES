--SELECT
--ID, CUSTOMERNAME, CITY, BIRTHDATE, DISTRICT, GENDER
--FROM
--dbCUSTOMERS

--INSERT INTO dbCUSTOMERS
--(CUSTOMERNAME, CITY, BIRTHDATE, DISTRICT, GENDER)
--VALUES
--('???DEN ?INAR','?ZM?R','1984-09-15','BORNOVA','K')

--INSERT INTO [dbo].[dbCUSTOMERS] 
--(CUSTOMERNAME, CITY, BIRTHDATE, DISTRICT, GENDER) 
--VALUES
--('AY?EN DURMAZ','ANTALYA','2000-04-23','MANAVGAT','K')

--SELECT * FROM [dbo].[dbCUSTOMERS]

--UPDATE dbCUSTOMERS SET NATION = 'RUS',AGE=26

--SELECT DATEDIFF(YEAR,'2000-06-19',GETDATE())

--BURADA DATEDIFF(YEAR,'?LK TAR?H','SON TAR?H') BURADA YEAR KULLARAK FARKI YIL T?R?NDEN ALDIK
--UPDATE dbCUSTOMERS SET NATION = 'RUS',AGE=DATEDIFF(YEAR,BIRTHDATE,GETDATE())

--DELETE FROM dbCUSTOMERS

--TRUNCATE KULLANIMI, TABLOYU ?LK OLU?TURDU?UMUZ HAL?NE D?N??T?REN B?R KOMUTTUR, ???NDEK? T?M VER?LER? S?L?YOR
--BURADA T?M VER?LER? DELETE ?LE S?LSEK B?LE BO? OLAN TABLOYA YEN? B?R DE?ER EKLED???M?Z ZAMAN SON S?L?NEN SATIRININ ID NUMARASINDAN ?T?BAREN DEVAM ED?YOR
--FAKAT TRUNCATE YAPINCA T?M VER?LER? S?L?YOR VE HEPS?N? S?LSEK B?LE YEN? B?R SATIR EKLEND??? ZAMAN 1 DEN BA?LAYACAKTIR
--TRUNCATE TABLE DBCUSTOMERS

--WHERE KULLANIMI
SELECT * FROM dbCUSTOMERS
--WHERE dbCUSTOMERS.CUSTOMERNAME='AY?EN DURMAZ'
--WHERE dbCUSTOMERS.CITY = '?ZM?R'
--WHERE CITY<>'ANTALYA'
--WHERE NOT CITY='?ZM?R'
--WHERE BIRTHDATE>'1985-01-01'
--WHERE BIRTHDATE BETWEEN '19840101' AND '19851231'
--UPDATE dbCUSTOMERS SET AGE = DATEDIFF(YEAR,BIRTHDATE,GETDATE())
--WHERE AGE BETWEEN 20 AND 40
--WHERE CUSTOMERNAME LIKE 'AY%'
--WHERE DISTRICT LIKE '%AV%'
--WHERE DISTRICT NOT LIKE '%AV%'
--WHERE CITY IN ('?ZM?R','ANTALYA')
--DELETE FROM dbCUSTOMERS WHERE ID=1
--UPDATE dbCUSTOMERS SET NATION = 'TR'
--WHERE AGE > 75

--SELECT * FROM dbCUSTOMERS
--WHERE CITY='?STANBUL'AND GENDER='E' AND DISTRICT = 'Esenler'

--SELECT * FROM dbCUSTOMERS
--WHERE CITY = '?STANBUL'
--AND GENDER = 'E'
--AND BIRTHDATE BETWEEN '19900101' AND '20000101'

SELECT * FROM dbCUSTOMERS
--WHERE CITY='?STANBUL' OR CITY='?ZM?R'
--WHERE CITY IN ('?STANBUL','?ZM?R','BURSA')
--WHERE BIRTHDATE BETWEEN '19900101' AND '19980101'
--WHERE BIRTHDATE >='19900101' AND BIRTHDATE <='19980101'
--WHERE NOT BIRTHDATE BETWEEN '19900101' AND '19980101'
--WHERE BIRTHDATE<='19900101' OR BIRTHDATE >='19980101'

--DISTINCT KOMUTUNUN KULLANILMASI, TEKRAR EDEN SATIRLARI TEK?LLE?T?RME AMACIYLA KULLANILIR
SELECT DISTINCT CITY FROM dbCUSTOMERS
SELECT DISTINCT CITY , DISTRICT FROM dbCUSTOMERS
WHERE CITY = '?stanbul'
SELECT DISTINCT GENDER FROM dbCUSTOMERS
SELECT DISTINCT AGE FROM dbCUSTOMERS
WHERE CITY = '?stanbul'

--ORDER BY KULLANIMI
SELECT * FROM dbCUSTOMERS
--GROUP BY (CITY)
--ORDER BY ID ASC,
--AGE ASC
--ORDER BY CUSTOMERNAME ASC
--ORDER BY BIRTHDATE
--WHERE CITY='?stanbul'
--ORDER BY CITY ASC,
--DISTRICT ASC,
--CUSTOMERNAME ASC
--ORDER BY 5,2

--TOP KULLANIMI
--SELECT
--TOP 50 PERCENT 
--* FROM DBCUSTOMERS
--ORDER BY CUSTOMERNAME