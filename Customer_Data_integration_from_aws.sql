-- Load customer churn data from S3 with TotalCharges blank-value handling
-- Co-authored with CoCo
create or replace database customer_churn;
create or replace schema customer_churn.telecom;
create or replace schema customer_churn.stages;
create or replace schema customer_churn.files;

--Create aws storgae integration object
create or replace storage integration s3_int
  TYPE = EXTERNAL_STAGE
  STORAGE_PROVIDER = S3
  ENABLED = TRUE 
  STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::769265544020:role/aws-snoflake-analytics'
  STORAGE_ALLOWED_LOCATIONS =('s3://customer-type-datasets/')
   COMMENT = 'This an optional comment' ;
   
--identify the user and external id and add them to the properties of the IAM role
desc integration s3_int;

--create the file format
CREATE OR REPLACE file format customer_churn.files.csv_fileformat
    type = csv
    field_delimiter = ','
    skip_header = 1
    null_if = ('NULL','null')
    empty_field_as_null = TRUE
    FIELD_OPTIONALLY_ENCLOSED_BY = '"';

CREATE OR REPLACE stage customer_churn.stages.csv_folder
    URL = 's3://customer-type-datasets/Telecom-customer/customer_churn_data.csv'
    STORAGE_INTEGRATION = s3_int
    FILE_FORMAT = customer_churn.files.csv_fileformat;
    
--Create the table
CREATE OR REPLACE TABLE customer_churn.telecom.customer_churn (
customerID Varchar(10),
gender Varchar(7),	
SeniorCitizen	BOOLEAN,
Partner BOOLEAN,
Dependents Boolean,	
tenure	INT,
PhoneService BOOLEAN,
MultipleLines Varchar(20),
InternetService	Varchar(20),
OnlineSecurity	Varchar(20),
OnlineBackup VARCHAR(20),
DeviceProtection VARCHAR(20),
TechSupport Varchar(20),
StreamingTV Varchar(20),
StreamingMovies VARCHAR(20),
Contract VARCHAR(20),
PaperlessBilling BOOLEAN,
PaymentMethod VARCHAR(30),
MonthlyCharges Double,
TotalCharges VARCHAR(20),
Churn Boolean);

--Copy the table from aws to the created table
COPY INTO customer_churn.telecom.customer_churn
FROM @customer_churn.stages.csv_folder
file_format = customer_churn.files.csv_fileformat;

--check the output
select count(*) from customer_churn.telecom.customer_churn;