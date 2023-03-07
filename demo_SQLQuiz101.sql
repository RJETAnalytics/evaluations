-- demo_SQLQuiz101.sql
-- By : Chris Woolery
-- Description : Uses htl database sample data for SQL 101 Quiz
-- Type : SQL table only, not persistant
-- Updated :


--Hotel Table Sample 
SELECT TOP 10 
	EmployeeID CustID,
	DATEADD(MINUTE, CAST(SabreID AS int),  CAST(ResStartDate as datetime)) ReservationStartDate,
	DATEADD(MINUTE, CAST(SabreID AS int),  CAST(ResEndDate as datetime)) ReservationEndDate,
	RatePerNight RoomRate,
	SabreID HotelID 
FROM 
    htl_AllRooms
WHERE LEN(EmployeeID) <= 6
ORDER BY 
    NEWID();

--Customer Table Sample 
SELECT TOP 10
	FirstName, LastName, FullName, CustID, CASE WHEN RIGHT(CustID, 1) <=7 THEN 'Active' ELSE 'Inactive' END Status,
	CASE WHEN SUBSTRING(CustID, 4,1) <=3 THEN 'Bronze'
	WHEN SUBSTRING(CustID, 4,1) <=7 THEN 'Silver' ELSE 'Gold' END Level
FROM
(SELECT TOP 10000
	FirstName,
	LastName,
	CONCAT(FirstName, ' ', LastName) FullName,
	EmployeeID CustID 
FROM 
    htl_AllRooms
WHERE LEN(EmployeeID) = 6) c
ORDER BY 
    NEWID();

--Hotel Table Sample
SELECT TOP 10
	HotelID, HotelName, HotelType, 
	CASE WHEN RIGHT(HotelID, 1) <=7 THEN 'Standard' ELSE 'Elite' END Status 
FROM
(SELECT TOP 10000
	SabreID HotelID,
	HotelName,
	HotelType
FROM 
    htl_AllRooms
WHERE LEN(SabreID) <= 8 AND HotelType IS NOT NULL) c
ORDER BY 
    NEWID();