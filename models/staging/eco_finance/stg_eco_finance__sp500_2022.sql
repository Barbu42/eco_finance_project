with 

source as (

    select * from {{ source('eco_finance', 'sp500_2022') }}

),

renamed as (

    select
        ticker,
        name,
        currency,
        exchange,
        industry,
        logo,
        weburl,
        environment_grade,
        environment_level,
        social_grade,
        social_level,
        governance_grade,
        governance_level,
        environment_score,
        social_score,
        governance_score,
        total_score,
        last_processing_date,
        total_grade,
        total_level,
        cik

    from source

)

select * from renamed
