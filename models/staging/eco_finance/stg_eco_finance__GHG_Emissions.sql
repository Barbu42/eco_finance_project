with 

source as (

    select * from {{ source('eco_finance', 'GHG_Emissions') }}

),

renamed as (

    select
        date_year,
        energy__mtco2e_,
        industrial_processes_and_product_use__mtco2e_,
        agriculture__mtco2e_,
        waste__mtco2e_

    from source

)

select * from renamed
