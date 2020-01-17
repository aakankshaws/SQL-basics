/* 1. Provide a table for all web_events associated with account name of Walmart. There should be three columns. 
Be sure to include the primary_poc, time of the event, and the channel for each event. 
Additionally, you might choose to add a fourth column to assure only Walmart events were chosen.*/

SELECT a.primary_poc, w.occurred_at, w.channel, a.name
FROM web_events w
JOIN accounts a
ON w.account_id = a.id
WHERE a.name LIKE 'Walmart'


/* 2. Provide a table that provides the region for each sales_rep along with their associated accounts. 
Your final table should include three columns: the region name, the sales rep name, and the account name. 
Sort the accounts alphabetically (A-Z) according to account name.*/

SELECT r.name, s.name, a.name
FROM region r
JOIN sales_reps s
ON r.id = s.region_id
JOIN accounts a
ON a.id = a.sales_rep_id
ORDER BY a.name
