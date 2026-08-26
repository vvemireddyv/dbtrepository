{{
    config(
        materialized='table',
        transient=false
    )
}}

select id,concat(first_name, '_', last_name) as name from dev_db.bronze.t_emp