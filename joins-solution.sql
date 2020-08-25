-- Get all customers and their addresses.
SELECT * FROM "addresses"
JOIN "customers" ON "customers".id = "addresses".customer_id;

-- Get all orders and their line items (orders, quantity and product).
SELECT "orders".order_date, "line_items".quantity, "products" FROM "line_items"
INNER JOIN "orders" ON "orders".id = "line_items".order_id
INNER JOIN "products" ON "products".id = "line_items".product_id;

-- Which warehouses have cheetos?
SELECT "warehouse".warehouse,"products".description, "warehouse_product".on_hand FROM warehouse 
FULL OUTER JOIN "warehouse_product" ON "warehouse".id = "warehouse_product".warehouse_id
FULL OUTER JOIN "products" ON "products".id = "warehouse_product".product_id
WHERE "products".description = 'cheetos'

-- Which warehouses have diet pepsi?
SELECT "warehouse".warehouse,"products".description, "warehouse_product".on_hand FROM warehouse 
FULL OUTER JOIN "warehouse_product" ON "warehouse".id = "warehouse_product".warehouse_id
FULL OUTER JOIN "products" ON "products".id = "warehouse_product".product_id
WHERE "products".description = 'diet pepsi';

-- Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.

-- How many customers do we have?
-- How many products do we carry?
-- What is the total available on-hand quantity of diet pepsi?