# Question 4 Display all the orders along with product name ordered 
# by a customer having Customer_Id=2

select cus_name, pro_name, ord_id, ord_date, ord_amount from customer as c, product p, supplier_pricing as sp, 
orders as o 
where c.cus_id = '2'
and c.cus_id = o.cus_id
and p.pro_id = sp.pro_id
and o.pricing_id = sp.pricing_id;
