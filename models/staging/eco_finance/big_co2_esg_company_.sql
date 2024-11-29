WITH sub1 AS (
SELECT 
    * 
    ,CASE 
        WHEN environment_grade LIKE "%A%" AND `Niv de pollution` = "Faible pollution" THEN "faible_pollueur"
        WHEN environment_grade LIKE "%A%" AND `Niv de pollution` = "Très polluant" THEN "petit_filou"
        WHEN total_grade LIKE "%A%" AND `Niv de pollution` = "Très polluant" THEN "petit_filou"
        WHEN environment_grade LIKE "%B%" AND `Niv de pollution` = "Très polluant" THEN "gros_pollueur"
        WHEN total_grade LIKE "%B%" AND `Niv de pollution` = "Très polluant" THEN "gros_pollueur"
        ELSE "pollueur_commun"
    END AS cluster
from {{ source('eco_finance', 'big_co2_esg_company_') }}
WHERE `Niv de pollution` IS NOT NULL 
)

SELECT 
        name_in_esg_dataset AS company_name
        ,ticker
        ,* EXCEPT (`2013`, `2014`, `2015`, `2016`, `2017`, `2018`, `2019`, `2020`, `2021`, `2022`, `2023`, `2024`, `2025`, `2026`, `2027`, `2028`, `2029`, `2030`, `2031`, `2032`, `2033`, `2034`, `2035`, `2036`, `2037`, `2038`, `2039`, `2040`, `2041`, `2042`, `2043`, `2044`, `2045`, `2046`, `2047`, `2048`, `2049`, `2050`,name_in_co2_report,total_score,total_level,governance_score,governance_level,social_score,social_level,environment_score,environment_level,name_in_esg_dataset,ticker,average,units)
        ,ROUND(Average,3) AS estimated_co2
        ,units AS co2_unit
FROM sub1