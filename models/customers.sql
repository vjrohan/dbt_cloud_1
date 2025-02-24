{{ config(materialized='table') }}

with customers as (
    select * from {{ source("cust", "customers") }}
)
select * from customers

