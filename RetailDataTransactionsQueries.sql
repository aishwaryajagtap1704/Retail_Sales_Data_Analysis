create database RetailSalesData;
use RetailSalesData;

Create table Sales_Data_Transactions(
customer_id VARCHAR(255),
trans_date varchar(255),
tran_amount int
);

Create table Sales_Data_Response(
customer_id VARCHAR(255) Primary key,
response int
);


Load data INFILE 'C:/ProgramData/MySQL/MySQL Server 8.2/Uploads/Retail_Data_Transactions.csv'
INTO TABLE Sales_Data_Transactions
FIELDS terminated by ','
LINES terminated by '\n'
IGNORE 1 ROWS;

explain select * from Sales_Data_Transactions where customer_id='CS5295';

create index idx_id on Sales_Data_Transactions(customer_id);

explain select * from Sales_Data_Transactions where customer_id='CS5295';








