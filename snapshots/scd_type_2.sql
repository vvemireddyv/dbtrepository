{% snapshot scd_type_2 %}
    {{
        config(
            target_schema='silver',
            target_database='dev_db',
            unique_key='ticket_id',
            strategy='check',
            check_cols =['status']
        )
    }}

    select * from {{ source('s1', 't_ticket_info') }}
 {% endsnapshot %}