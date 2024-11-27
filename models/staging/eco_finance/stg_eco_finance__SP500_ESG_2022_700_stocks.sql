with 

source as (

    select * from {{ source('eco_finance', 'SP500_ESG_2022_700_stocks') }}

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
--------------------------------------------------
select      -- colonnes supprimées :exchange, logo, weburl, last_processing_date, cik

        ticker,
        name,
        currency,
        industry,
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
        total_grade,
        total_level,
        

from renamed

