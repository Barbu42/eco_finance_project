with 

source as (

    select * from {{ source('eco_finance', 'nextera_profile_financials') }}

),

renamed as (

    select
        date_year,
        ticker,
        operating_revenues,
        ni_att_nextera,
        eps_dilution,
        total_equity,
        total_capitalization,
        cf_operating_activities,
        total_asset,
        total_capex

    from source

)

select * from renamed
