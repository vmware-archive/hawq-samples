-- 1. HAWQ table
DROP TABLE IF EXISTS retail_demo.order_lineitems_hawq;
CREATE  TABLE retail_demo.order_lineitems_hawq
(
    order_id TEXT,
    order_item_id TEXT,
    product_id TEXT,
    product_name TEXT,
    customer_id TEXT,
    store_id TEXT,
    item_shipment_status_code TEXT,
    order_datetime TEXT,
    ship_datetime TEXT,
    item_return_datetime TEXT,
    item_refund_datetime TEXT,
    product_category_id TEXT,
    product_category_name TEXT,
    payment_method_code TEXT,
    tax_amount TEXT,
    item_quantity TEXT,
    item_price TEXT,
    discount_amount TEXT,
    coupon_code TEXT,
    coupon_amount TEXT,
    ship_address_line1 TEXT,
    ship_address_line2 TEXT,
    ship_address_line3 TEXT,
    ship_address_city TEXT,
    ship_address_state TEXT,
    ship_address_postal_code TEXT,
    ship_address_country TEXT,
    ship_phone_number TEXT,
    ship_customer_name TEXT,
    ship_customer_email_address TEXT,
    ordering_session_id TEXT,
    website_url TEXT
)
WITH (appendonly=true, compresstype=zlib) DISTRIBUTED RANDOMLY;

-- 2. HAWQ table
DROP TABLE IF EXISTS retail_demo.orders_hawq;
CREATE TABLE retail_demo.orders_hawq
(
    order_id TEXT,
    customer_id TEXT,
    store_id TEXT,
    order_datetime TEXT,
    ship_completion_datetime TEXT,
    return_datetime TEXT,
    refund_datetime TEXT,
    payment_method_code TEXT,
    total_tax_amount TEXT,
    total_paid_amount TEXT,
    total_item_quantity TEXT,
    total_discount_amount TEXT,
    coupon_code TEXT,
    coupon_amount TEXT,
    order_canceled_flag TEXT,
    has_returned_items_flag TEXT,
    has_refunded_items_flag TEXT,
    fraud_code TEXT,
    fraud_resolution_code TEXT,
    billing_address_line1 TEXT,
    billing_address_line2 TEXT,
    billing_address_line3 TEXT,
    billing_address_city TEXT,
    billing_address_state TEXT,
    billing_address_postal_code TEXT,
    billing_address_country TEXT,
    billing_phone_number TEXT,
    customer_name TEXT,
    customer_email_address TEXT,
    ordering_session_id TEXT,
    website_url TEXT
)
WITH (appendonly=true, compresstype=zlib) DISTRIBUTED RANDOMLY;

