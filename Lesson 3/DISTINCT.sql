/*The DISTINCT Clause (8 results)*/

SELECT DISTINCT c.Country
FROM customer AS c
JOIN CustomerOrder AS o
ON c.CustId = o.CustomerId
WHERE o.TotalAmount > 5000

/*Without DISTINCT (38 results)*/

SELECT c.Country
FROM customer AS c
JOIN CustomerOrder AS o
ON c.CustId = o.CustomerId
WHERE o.TotalAmount > 5000


/*
Notice that it is asking for customers with a TotalAmount greater than $5,000 but only to display the list of countries. The DISTINCT limits each country in the result-set to one row displayed.

Without DISTINCT, the result-set is 38 rows. With DISTINCT, there is a result-set of 8 different countries. Since you know that there were 38 rows, this means that the countries, some or all of them, are repeated. So, you can deduce that either 8 people have ordered 38 orders or there are multiple customers from the same country. DISTINCT limits the result-set to different values.

*/