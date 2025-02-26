{{ config(enabled=var('fivetran_log_using_connector_sdk', True)) }}

select *
from {{ var('connector_sdk') }}