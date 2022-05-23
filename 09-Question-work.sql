#Question---> 9  Create a stored procedure to display supplier id, name, rating and Type_of_Service.
# For Type_of_Service, If rating =5, print “Excellent Service”,If rating >4 print “Good Service”,
# If rating >2 print “Average Service” else print “Poor Service

Step --> 1 

# Create a new procedure as {display_supplier_details} using MySQLWorkbench

Step --> 2

Embed the following block of code within the BEGIN & END statements

select report.supp_id,report.supp_name,report.Average,
CASE
WHEN report.Average =5 THEN 'Excellent Service'
WHEN report.Average >4 THEN 'Good Service'
WHEN report.Average >2 THEN 'Average Service'
ELSE 'Poor Service'
END AS Type_of_Service from
(select final.supp_id, supplier.supp_name, final.Average from

(select test2.supp_id, sum(test2.rat_ratstars)/count(test2.rat_ratstars) as Average from
(select supplier_pricing.supp_id, test.ORD_ID, test.RAT_RATSTARS from supplier_pricing inner join
(select `orders`.pricing_id, rating.ORD_ID, rating.RAT_RATSTARS from `orders` inner join rating on rating.`ord_id` = `orders`.ord_id ) as test
on test.pricing_id = supplier_pricing.pricing_id)
as test2 group by supplier_pricing.supp_id)
as final inner join supplier where final.supp_id = supplier.supp_id) as report;

Step--> 3

Invoke the procedure using the following statement

call display_supplier_details();
