with 

source as (

    select * from {{ source('eco_finance', 'co2_per_capita') }}

),

renamed as (

    select
        country,
        country_code,
        year,
        co2_emissions_prc

    from source

)

select * from renamed
