with connector as (
    select *
    from {{ ref('stg_fivetran_platform__connector') }}

    {% if var('fivetran_log_using_connector_sdk', True) %}

    union all

    select *
    from {{ ref('stg_fivetran_platform__connector_sdk') }}

    {% endif %}
)

select *
from connector