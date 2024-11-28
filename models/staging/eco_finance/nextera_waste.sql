with 

source as (

    select * from {{ source('eco_finance', 'nextera_waste') }}

),

renamed as (

    select
        date_year,
        ticker,
        type,
        tons_recycled,
        tons_composted,
        tons_recovered,
        tons_incinerated,
        tons_deep_well_injecetd,
        tons_landfill,
        tons_on_site_storage,
        tons_other,
        tons reused

    from source

)

select * from renamed
