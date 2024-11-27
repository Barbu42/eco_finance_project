WITH converted_units AS (
    SELECT *,
        CASE 
            WHEN CP_Unit LIKE '%[NEDC]%' THEN 1.2 
            ELSE 1.0 
        END AS conversion_factor
    FROM {{ ref('stg_eco_finance__comp_unpivot') }}
)

SELECT *,
       value * conversion_factor AS adjusted_value
FROM converted_units
