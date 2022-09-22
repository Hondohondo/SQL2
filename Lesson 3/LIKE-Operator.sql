/*The LIKE Operator*/

/*If you're not sure about one letter, the _ (underscore) work greats, such as 'Wilson' vs 'Wilsen.' You would use LIKE 'Wils_n.'*/
/*
The difference in the % wildcard and the _ wildcard is that the _ stands for only one character
*/


SELECT *
FROM customer AS c
JOIN CustomerOrder AS o
ON c.CustId = o.CustomerId
WHERE c.LastName LIKE 'Berg%'
AND  o.TotalAmount > 500