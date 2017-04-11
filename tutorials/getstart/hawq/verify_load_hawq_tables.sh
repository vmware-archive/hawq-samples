#!/bin/bash

order_lineitems_hawq=`psql -d hawqgsdb -Atc "select count(*) from retail_demo.order_lineitems_hawq;"`
orders_hawq=`psql -d hawqgsdb -Atc "select count(*) from retail_demo.orders_hawq;"`

echo "							    "
echo "        Table Name           |    Count "
echo "-----------------------------+------------------------"
echo " order_lineitems_hawq        |   $order_lineitems_hawq"
echo " orders_hawq                 |   $orders_hawq"
echo "-----------------------------+------------------------"
