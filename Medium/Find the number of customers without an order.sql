/*
Find the number of customers without an order.

-- https://platform.stratascratch.com/coding/10089-find-the-number-of-customers-without-an-order?code_type=1

*/


select count(1) from customers
where id not in (select distinct cust_id from orders)
