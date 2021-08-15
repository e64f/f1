SELECT 
	c.id,
	c.name,
	COUNT(DISTINCT p.prodict_id) cnt
FROM
	tbl_clients c, 
	tbl_orders_products p 
WHERE 	
	p.client_id = c.id 
GROUP BY  
	p.client_id
HAVING 
	cnt >= 3



