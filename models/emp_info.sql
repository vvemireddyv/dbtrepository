{{
    config(
        materialized='table',
        transient=false
    )
}}

select id,concat(first_name, '_', last_name) as name from {{ source('s1', 't_emp') }}