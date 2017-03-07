#!/bin/bash

# get script directory
CURDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# set datafile directory - makes assumptions
DATADIR=$CURDIR/../../../datasets/retail

zcat $DATADIR/order_lineitems.tsv.gz | psql -c "COPY retail_demo.order_lineitems_hawq FROM STDIN DELIMITER E'\t' NULL E'';"

zcat $DATADIR/orders.tsv.gz | psql -c "COPY retail_demo.orders_hawq FROM STDIN DELIMITER E'\t' NULL E'';"

