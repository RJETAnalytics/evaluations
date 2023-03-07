---
title: "SQL Quiz 101"
author: "An interview assessment by RJET Finance Analytics"
output: html_document
---


The Hotel database contains 285,000 customers, 12,355 hotels and 5,245,501 reservations.  Here is a random sampling of the three tables we will be looking at:<br>

![ ](https://github.com/RJETAnalytics/evaluations/blob/main/Images/HotelTables.png?raw=true)

Here is a simple query that retrieves some information about historical hotel reservations.  For the purposes of this assessment, assume that you run this query "today".<br><br>

```
--##QUERY #1##--
SELECT
	acct.Fullname,
	acct.Custid,
	res.ReservationID,
	res.ReservationStartDate,
	res.ReservationesEndDate,
	res.RoomRate,
	hotel.HotelName
FROM
  customeraccounts as acct
LEFT JOIN reservations as res on r.custid = c.custid
LEFT JOIN hotel as hotel on h.hotelid = r.hotelid
WHERE
  acct.Status = 'Active' 
  AND res.ResStartDate between convert(datetime, '2021-01-01 00:00:00.0000') AND convert(datetime, '2021-12-31 23:59:59.9999')
```

**Questions**


1.  Which statement best describes what query #1 is trying to do? 

    a. It gives the account status of active customers.
 
    b. It gives the total number of reservations and amount spent for 2021.
    
    c. It gives reservation detail for reservations made in 2021.
    
    d. It summarizes hotel usage for active customers made after Jan 1st 2021.


2. When query #1 runs, I see rows with blank data for ReservationID and HotelName; why is that happening?


3. I wanted to see every reservation made in 2021 but query #1 isn't showing all of them.  Why not?  

    a. How could the query be changed to make that happen?


4. How might the results of query #1 change if the LEFT JOIN was changed to INNER JOIN?
<br>

5. Will query #2 below return more rows or fewer rows than query #1.  

    a. Why?
    
    b. What would be an obvious improvement to make query #2 produce more readable results?


```
--##QUERY #2##--
SELECT
	acct.Fullname,
	acct.Custid,
	COUNT(*),
	SUM(res.RoomRate)
FROM
  customeraccounts as acct
LEFT JOIN reservations as res on r.custid = c.custid
LEFT JOIN hotel as hotel on h.hotelid = r.hotelid
WHERE
  acct.Status = 'Active' 
  AND res.ResStartDate between convert(datetime, '2021-01-01 00:00:00.0000') AND convert(datetime, '2021-12-31 23:59:59.9999')
GROUP BY
	acct.Fullname,
	acct.Custid
```
