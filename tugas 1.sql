-- menampilkan data yang sama dalam 2 tabel
SELECT customers.id, customers.NAME,customers.AGE,customers.ADDRESS FROM customers,orders WHERE customers.id=orders.CUSTOMER_ID

-- menampilkan data inner join 
SELECT customers.NAME,customers.AGE,customers.ADDRESS, orders.TANGGAL, orders.AMOUNT FROM customers INNER JOIN orders ON customers.ID=orders.CUSTOMER_ID

-- menampilkan data left join 
SELECT customers.NAME,customers.AGE,customers.ADDRESS, orders.TANGGAL, orders.AMOUNT FROM customers LEFT JOIN orders ON customers.ID=orders.CUSTOMER_ID

-- menampilkan data right join
SELECT customers.NAME,customers.AGE,customers.ADDRESS, orders.TANGGAL, orders.AMOUNT FROM customers RIGHT JOIN orders ON customers.ID=orders.CUSTOMER_ID

-- menampilkan data full join
SELECT customers.id,customers.NAME,customers.AGE,customers.ADDRESS,customers.SALARY FROM customers LEFT JOIN orders ON customers.ID = orders.CUSTOMER_ID
UNION ALL 
SELECT customers.id,customers.NAME,customers.AGE,customers.ADDRESS,customers.SALARY FROM customers RIGHT JOIN orders ON customers.ID= orders.CUSTOMER_ID;

-- menampilkan data self join
select customers.NAME,orders.AMOUNT FROM customers,orders WHERE customers.ID=orders.CUSTOMER_ID

-- menampilkan data cartesian join
SELECT customers.NAME,customers.AGE FROM customers,orders 