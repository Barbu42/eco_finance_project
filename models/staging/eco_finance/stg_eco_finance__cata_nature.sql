    select 
    Year AS date_year
    ,`Disaster Group` AS disaster_group
    ,`Disaster Type` AS disaster_type
    ,Country AS country
    ,ISO AS ISO
    ,Region AS region
    ,Continent AS continent
    ,`Total Deaths` AS total_deaths
    ,`No Injured` AS nb_injured
    ,`No Affected` AS nb_affected
    ,`No Homeless` AS nb_homeless
    ,`Total Affected` AS tot_affected
    ,`Reconstruction Costs` AS reconstruction_costs
    ,`Insured Damages` AS insured_damages
    ,`Total Damages ` AS tot_damages
    ,CAST(start_date AS date) AS start_date
    ,CAST(end_date AS date) AS end_date
    ,CASE
        WHEN `Total Deaths` > 10000 
         OR `Total Affected` > 1000000 
         OR `Total Damages ` > 10e9 THEN 'Global'
        WHEN `Total Deaths` > 100 
         OR `Total Affected` > 10000 
         OR `Total Damages ` > 100e6 THEN 'Regional'
        ELSE 'Local'
     END AS impact_level
     from {{ source('eco_finance', 'cata_nature') }}
