/*
window_function_name(expression)   
OVER (  
    [partition_defintion]  
    [order_definition]  
    [frame_definition]  
)  
Partition Clause
This clause is used to divide or breaks the rows into partitions, and the partition boundary separates these partitions.
 The window function operates on each partition, and when it crosses the partition boundary, it will be initialized again. 
 The syntax of this clause is given below:
PARTITION BY <expression>[{,<expression>...}]  
In the partition clause, we can define one or more expressions that are separated by commas.
ORDER BY Clause
This clause is used to specify the order of the rows within a partition. The following are the syntax of ORDER BY clause:

ORDER BY <expression> [ASC|DESC], [{,<expression>...}]  
Frame Clause
A frame is the subset of the current partition in window functions. So we use frame clause to define a subset of the current
partition. The syntax of creating a subset of the current partition using frame clause is as follows:

frame_unit {<frame_start>|<frame_between>}  
*/
use mitraz;
CREATE TABLE Sales(  
    Employee_Name VARCHAR(45) NOT NULL,  
    Year INT NOT NULL,  
            Country VARCHAR(45) NOT NULL,  
    Product VARCHAR(45) NOT NULL,  
    Sale DECIMAL(12,2) NOT NULL,  
    PRIMARY KEY(Employee_Name, Year)  
); 
INSERT INTO Sales(Employee_Name, Year, Country, Product, Sale)  
VALUES('Joseph', 2017, 'India', 'Laptop', 10000),  
('Joseph', 2018, 'India', 'Laptop', 15000),  
('Joseph', 2019, 'India', 'TV', 20000),  
('Bob', 2017, 'US', 'Computer', 15000),  
('Bob', 2018, 'US', 'Computer', 10000),  
('Bob', 2019, 'US', 'TV', 20000),  
('Peter', 2017, 'Canada', 'Mobile', 20000),  
('Peter', 2018, 'Canada', 'Calculator', 1500),  
('Peter', 2019, 'Canada', 'Mobile', 25000);  

select * from sales order by Year; 
select count(*) from sales;
# The aggregate function evaluates multiple rows and produces the result set into one row. 
SELECT SUM(sale) AS Total_Sales FROM Sales;  
#use the "SUM" function with the GROUP BY clause that works on the subset of rows
SELECT Year, SUM(Sale) AS Total_Sales   
FROM Sales   
GROUP BY Year   
ORDER BY year;
/*Similar to aggregate function, window function also works with a subset of rows, but it does not reduce the 
result set into a single row. It means window functions perform operations on a set of rows and produces an aggregated value 
for each row.   */
#with partition
SELECT Year, Product, Sale, SUM(Sale)   
OVER(PARTITION BY Year) AS Total_Sales   
FROM Sales;  
#without partition
SELECT Year, Product, Sale,   
SUM(Sale) OVER(PARTITION BY Year) AS Year_Sales ,
SUM(Sale)  over() as  total_sales
FROM Sales;  
/*
we can see that the window operation uses an OVER clause, which is responsible for partitioning the query rows 
into groups that processed by the window function. Here, the OVER clause partitions rows by year and produces a sum on 
every partition. After successful calculation, it produces this sum corresponding to each partitioning row.*/
#Analytical functions 
# LAG() -- Returns the value of the Nth row before the current row in a partition. It returns NULL if no preceding row exists.
SELECT Year, Product, Sale, LAG(Sale,1) 
 OVER(ORDER BY Year) AS Total_Sales   
FROM Sales;  
# LEAD() -- Returns the value of the Nth row after the current row in a partition. It returns NULL if no subsequent row exists.
SELECT Year, Product, Sale, LEAD(Sale,2,0) 
 OVER(ORDER BY Year) AS Total_Sales   
FROM Sales;  
#firstvalue()--
SELECT
    Product,Year
    Sale,
    LAST_VALUE(Product) OVER ( ORDER BY Year) least_product
FROM
    Sales;
select * from sales order by year;
