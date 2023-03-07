---
title: "SQL Quiz 201"
author: "Intermediate SQL interview assessment by RJET Finance Analytics"
output: html_document
---

**Section 1 : Times and Totals**<br><br>

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

What happened? There were three purchases made on Feb 15: IDs 1, 2, and 3. The sum should therefore be $26.97. Instead, only the first purchase was counted. 
