with 

source as (

    select * from {{ source('eco_finance', 'cata_nature') }}

),

renamed as (

    select
        year,
        disaster group,
        disaster type,
        country,
        iso,
        region,
        continent,
        total deaths,
        no injured,
        no affected,
        no homeless,
        total affected,
        reconstruction costs,
        insured damages,
        total damages ,
        start_date,
        end_date,
        impact_level

    from source

)

select * from renamed
