with 

source as (

    select * from {{ source('eco_finance', 'nextera_water_conso') }}

),

renamed as (

    select
        date_year,
        ticker,
        surface_freshwater,
        surface_saltwater,
        waste_water_reclaimed,
        municipal_water,
        ground_water,
        groud_water_non_potable,
        nextera_energy_total_water_withdrawal,
        nextera_energy_total_water_consumption,
        total_water_returned,
        percent_consumed

    from source

)

select * from renamed
