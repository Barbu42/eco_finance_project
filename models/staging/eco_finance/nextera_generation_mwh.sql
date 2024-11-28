with 

source as (

    select * from {{ source('eco_finance', 'nextera_generation_mwh') }}

),

renamed as (

    select
        entity,
        ticker,
        date_year,
        coal,
        natural_gas,
        nuclear,
        oil,
        solar,
        wind,
        landfill_gas,
        total

    from source

)

select * from renamed
