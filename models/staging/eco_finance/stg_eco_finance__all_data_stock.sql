with 

source as (

    select * from {{ source('eco_finance', 'all_data_stock') }}

),

renamed as (

    select
        date,
        ticker,
        open,
        high,
        low,
        close,
        volume,
        dividends,
        stock splits

    from source

)

select * from renamed
