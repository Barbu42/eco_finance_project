with 

source as (

    select * from {{ source('eco_finance', 'company_emissions_overview') }}

),

renamed as (

    select
        company_name,
        cp_unit,
        date_year,
        target_unit,
        original_unit,
        normalized_value

    from source

)

select * from renamed
