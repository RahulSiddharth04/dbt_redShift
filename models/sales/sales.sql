select * 
from {{ source('sales_source', 'sales') }}
