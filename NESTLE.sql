
---CREATE TABLE and import csv file ---


CREATE TABLE nestlesales(

SalesID VARCHAR PRIMARY KEY ,
Date DATE,	
ProductName VARCHAR(100),	
TotalRevenue FLOAT,	
SalesLocation VARCHAR (100),	
SalesMedium VARCHAR(100)
);




SELECT * 
FROM nestlesales



-- TOTAL REVENUE 2018 T0 2020 FROM EACH PRODUCT---

SELECT productname , ROUND(CAST(SUM(totalrevenue)as numeric),0) AS Totalrevenue
FROM nestlesales
GROUP BY productname
ORDER BY totalrevenue DESC

-- TOTAL REVENUE 2018 FOR EACH PRODUCT --- 
SELECT productname , ROUND(CAST(SUM(totalrevenue)as numeric),0) AS Totalrevenue
FROM nestlesales
WHERE Extract(year from date) = 2018
GROUP BY productname
ORDER BY totalrevenue DESC


-- TOTAL REVENUE 2019 FOR EACH PRODUCT --- 
SELECT productname , ROUND(CAST(SUM(totalrevenue)as numeric),0) AS Totalrevenue
FROM nestlesales
WHERE Extract(year from date) = 2019
GROUP BY productname
ORDER BY totalrevenue DESC

-- TOTAL REVENUE 2020 FOR EACH PRODUCT --- 
SELECT productname , ROUND(CAST(SUM(totalrevenue)as numeric),0) AS Totalrevenue
FROM nestlesales
WHERE Extract(year from date) = 2020
GROUP BY productname
ORDER BY totalrevenue DESC

--TOTAL REVENUE 2018 TO 2020 BY SALES LOCATION

SELECT saleslocation , ROUND(CAST(SUM(totalrevenue) as numeric),0) AS totalrevenue
FROM nestlesales
GROUP BY saleslocation
ORDER BY totalrevenue DESC


-- TOTAL REVENUE 2018 FOR EACH PRODUCT --- 
SELECT saleslocation , ROUND(CAST(SUM(totalrevenue) as numeric),0) AS totalrevenue
FROM nestlesales
WHERE Extract(year from date) = 2018
GROUP BY saleslocation
ORDER BY totalrevenue DESC

-- TOTAL REVENUE 2019 FOR EACH PRODUCT --- 
SELECT saleslocation , ROUND(CAST(SUM(totalrevenue) as numeric),0) AS totalrevenue
FROM nestlesales
WHERE Extract(year from date) = 2019
GROUP BY saleslocation
ORDER BY totalrevenue DESC

-- TOTAL REVENUE 2020 FOR EACH PRODUCT --- 
SELECT saleslocation , ROUND(CAST(SUM(totalrevenue) as numeric),0) AS totalrevenue
FROM nestlesales
WHERE Extract(year from date) = 2020
GROUP BY saleslocation
ORDER BY totalrevenue DESC


---- maximum revenue EACH PRODUCT----

SELECT productname, ROUND(CAST(MAX(totalrevenue)as numeric),0) as maximumrevenue
FROM nestlesales
GROUP BY productname
ORDER BY maximumrevenue DESC


---- minimum revenue EACH PRODUCT----

SELECT productname, ROUND(CAST(MIN(totalrevenue)as numeric),0) as maximumrevenue
FROM nestlesales
GROUP BY productname
ORDER BY maximumrevenue DESC
