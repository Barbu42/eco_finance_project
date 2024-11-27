with 

source as (

    select * from {{ source('eco_finance', 'Exxon_Mobil_Full_Stock') }}

),

renamed as (

    select
        date,
        ticker,
        open,
        close,
        volume,
        dividends,
        stock_split

    from source

)

select * from renamed
