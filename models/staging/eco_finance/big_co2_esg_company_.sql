with 

source as (

    select * from {{ source('eco_finance', 'big_co2_esg_company_') }}

),

renamed as (

    select
        name_in_esg_dataset,
        country,
        industry,
        environment_grade,
        environment_level,
        environment_score,
        social_grade,
        social_level,
        social_score,
        governance_grade,
        governance_level,
        governance_score,
        total_grade,
        total_level,
        total_score,
        ticker,
        name_in_co2_report,
        units,
        average,
        niv de pollution,
        2013,
        2014,
        2015,
        2016,
        2017,
        2018,
        2019,
        2020,
        2021,
        2022,
        2023,
        2024,
        2025,
        2026,
        2027,
        2028,
        2029,
        2030,
        2031,
        2032,
        2033,
        2034,
        2035,
        2036,
        2037,
        2038,
        2039,
        2040,
        2041,
        2042,
        2043,
        2044,
        2045,
        2046,
        2047,
        2048,
        2049,
        2050

    from source

)

select * from renamed
