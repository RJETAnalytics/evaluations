---
title: "SQL Quiz 201"
author: "Intermediate SQL interview assessment by RJET Finance Analytics"
output: html_document
---

**1) Times and Totals**<br>

Imagine we have a table called purchases with purchase IDs, amounts, and times the purchase were made. Let’s say it looks like this:<br>

![ ](https://github.com/RJETAnalytics/evaluations/blob/main/Images/SQL201_01.png?raw=true)

Now let's calculate the sum of purchases made on Feb 1 by using the following query.<br><br>

```
SELECT
    SUM(amount) AS sum
FROM purchases
WHERE
    dt = '2023-02-15'
```

And that gives us this result.<br><br>

![ ](https://github.com/RJETAnalytics/evaluations/blob/main/Images/SQL201_01a.png?raw=true)

*Answer*<br>
What happened? There were three purchases made on Feb 15: IDs 1, 2, and 3. The sum should therefore be $26.97. Instead, only the first purchase was counted. 


**2) Which SQL statement will not generate any error message?**<br>  

  A. SELECT * FROM EMP WHERE EMPNO LIKE (1,2,3,4)
  
  B. SELECT * FROM EMP WHERE SAL BETWEEN 3000 TO 15000
  
  C. SELECT * FROM EMP WHERE COMM IS NOT NULL
  
  D. All of the above
  
<br>

**3) To specify a list of values ______ Operator is used?**<br>

  A. IN
  
  B. Like
  
  C. Between
  
  D. IS
  
<br>

**4) Which statement is valid?**<br>

  A. ALTER TABLE EMPLOYEE MODIFY (last_name CHAR2(2000))
  
  B. ALTER TABLE EMPLOYEE CHANGE (last_name CHAR2(2000))
  
  C. ALTER TABLE EMPLOYEE CHANGE (last_name VARCHAR2 (2000))
  
  D. ALTER TABLE EMPLOYEE MODIFY (last_name VARCHAR2 (2000))

<br>

**5) How can you insert a new row into the “STORE” table?**<br>

  A. INSERT ROW (1,‟WHITNEY BRYANT‟) INTO STORE
  
  B. INSERT VALUES (1,‟WHITNEY BRYANT‟) INTO STORE
  
  C. INSERT INTO (1,‟WHITNEY BRYANT‟) STORE
  
  D. INSERT INTO STORE VALUES (1,‟WHITNEY BRYANT‟)

<br>
  
**6) Which is a valid CREATE TABLE statement? **<br>

  A. Create table emp add(id integer(3))
  
  B. Create table emp (id integers(3))
  
  C. Create table emp modified (id integer(3))
  
  D. Create table emp (id integer(3))

<br>

Be prepared to explain your answer to any of the multiple choice questions.

