CREATE TABLE Salesman (
 salesman_id TEXT PRIMARY KEY,
 name TEXT,
 city TEXT,
 Comission TEXT
);
INSERT INTO Salesman(Salesman_id,name,city,Comission)
VALUES
 ("5001","James Hoog","New York","0.15"),
 ("5002","Nail Knite","Paris","0.13"),
 ("5005","Pit Alex","London","0.11"),
 ("5006","Mc Lyon","Paris","0.14");

CREATE TABLE Customer (
 customer_id TEXT,
 cust_name TEXT PRIMARY KEY,
 city TEXT,
 grade TEXT
 Salesman_id TEXT
);
INSERT INTO
customer(customer_id, cust_name,city,grade,saleman_id)
VALUES
 ("3002","nick rimando","new york","100","5001"),
 ("3007","drad davis","new york","200","5001"),
 ("3005","graham zusi","california","200","5002"),
 ("3008","julian green","london","300","5002"),

CREATE TABLE Orders (
 ord_no TEXT PRIMARY KEY,
 purch_amt TEXT,
 ord_date TEXT,
 customer_id TEXT,
 salesman_id TEXT
);

INSERT INTO
Orders(ord_no,purch_amt,ord_date,customer_id,salesman_id)
VALUES
 ("70001","150.5","2012-10-05","3005","5002"),
 ("70009","270.65","2012-09-10","3001","5001"),
 ("70002","65.26","2012-10-05","3002","5003"),
 ("70004","110.5","2012-08-17","3009","5007");


SELECT customer.cust_name, salesman.name, salesman.city
FROM Customer
JOIN salesman ON Customer.city = salesman.city;


SELECT Customer.cust_name, Salesman.name
FROM Customer
JOIN Salesman ON Customer.salesman_id = salesman.salesman_id;

SELECT Customer.cust_name, salesman.name
FROM Customer
JOIN Salesman ON Customer.salesman_id = Salesman.salesman_id;


salesman's city
SELECT Orders.ord_no, Customer.cust, Orders.customer_id,
Order.Salesman