with 

source as (

    select * from {{ source('eco_finance', 'nextera_emissions') }}

),

renamed as (

    select
        entity,
        ticker,
        date_year,
        nox_emissions,
        so2_emissions,
        co2_emissions,
        nox_emissions_rate,
        so2_emissions_rate,
        co2_emissions_rate

    from source

)

select * from renamed
