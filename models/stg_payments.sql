select ID as payment_id,
	ORDERID as order_id,
	PAYMENTMETHOD as payment_method,
	STATUS ,
	AMOUNT,
	CREATED 
from {{ source('stripe', 'payment') }}