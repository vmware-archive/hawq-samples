
DROP EXTERNAL TABLE IF EXISTS retail_demo.categories_dim_pxf;
CREATE EXTERNAL TABLE retail_demo.categories_dim_pxf
(
    category_id integer,
    category_name character varying(400)
)
LOCATION ('pxf://NAMENODE:51200/retail_demo/categories_dim/categories_dim.tsv.gz?profile=HdfsTextSimple')
FORMAT 'TEXT' (DELIMITER = E'\t');


DROP EXTERNAL TABLE IF EXISTS retail_demo.customers_dim_pxf;
CREATE EXTERNAL TABLE retail_demo.customers_dim_pxf
(
    customer_id TEXT,
    first_name TEXT,
    last_name TEXT,
    gender TEXT
)
LOCATION ('pxf://NAMENODE:51200/retail_demo/customers_dim/customers_dim.tsv.gz?profile=HdfsTextSimple')
FORMAT 'TEXT' (DELIMITER = E'\t');

DROP EXTERNAL TABLE IF EXISTS retail_demo.customer_addresses_dim_pxf;
CREATE EXTERNAL TABLE retail_demo.customer_addresses_dim_pxf
(
    customer_address_id TEXT,
    customer_id TEXT,
    valid_from_timestamp TEXT,
    valid_to_timestamp TEXT,
    house_number TEXT,
    street_name TEXT,
    appt_suite_no TEXT,
    city TEXT,
    state_code TEXT,
    zip_code TEXT,
    zip_plus_four TEXT,
    country TEXT,
    phone_number TEXT
)
LOCATION ('pxf://NAMENODE:51200/retail_demo/customer_addresses_dim/customer_addresses_dim.tsv.gz?profile=HdfsTextSimple')
FORMAT 'TEXT' (DELIMITER = E'\t');

DROP EXTERNAL TABLE IF EXISTS retail_demo.date_dim_pxf;
CREATE EXTERNAL TABLE retail_demo.date_dim_pxf
(
    calendar_day date,
    reporting_year smallint,
    reporting_quarter smallint,
    reporting_month smallint,
    reporting_week smallint,
    reporting_dow smallint
)
LOCATION ('pxf://NAMENODE:51200/retail_demo/date_dim/date_dim.tsv.gz?profile=HdfsTextSimple')
FORMAT 'TEXT' (DELIMITER = E'\t');

DROP EXTERNAL TABLE IF EXISTS retail_demo.email_addresses_dim_pxf;
CREATE EXTERNAL TABLE retail_demo.email_addresses_dim_pxf
(
    customer_id TEXT,
    email_address TEXT
)
LOCATION ('pxf://NAMENODE:51200/retail_demo/email_addresses_dim/email_addresses_dim.tsv.gz?profile=HdfsTextSimple')
FORMAT 'TEXT' (DELIMITER = E'\t');


DROP EXTERNAL TABLE IF EXISTS retail_demo.payment_methods_pxf;
CREATE EXTERNAL TABLE retail_demo.payment_methods_pxf
(
    payment_method_id smallint,
    payment_method_code character varying(20)
)
LOCATION ('pxf://NAMENODE:51200/retail_demo/payment_methods/payment_methods.tsv.gz?profile=HdfsTextSimple')
FORMAT 'TEXT' (DELIMITER = E'\t');

DROP EXTERNAL TABLE IF EXISTS retail_demo.products_dim_pxf;
CREATE EXTERNAL TABLE retail_demo.products_dim_pxf
(
    product_id TEXT,
    category_id TEXT,
    price TEXT,
    product_name TEXT
)
LOCATION ('pxf://NAMENODE:51200/retail_demo/products_dim/products_dim.tsv.gz?profile=HdfsTextSimple')
FORMAT 'TEXT' (DELIMITER = E'\t');

