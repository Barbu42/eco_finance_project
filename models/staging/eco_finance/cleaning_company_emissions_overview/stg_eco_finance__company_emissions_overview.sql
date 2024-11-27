WITH 

source AS (
    SELECT * 
    FROM {{ source('eco_finance', 'company_emissions_overview') }}
),

renamed AS (
    SELECT
        string_field_0 AS `Company_Name`,
        string_field_1 AS Geography,
        string_field_2 AS Geography_Code,
        string_field_3 AS Sector,	
        string_field_4 AS Large_Medium_Classification,
        string_field_5 AS ISINs,
        string_field_6 AS SEDOL,
        string_field_7 AS Level,	
        string_field_8 AS Performance_Compared_to_Previous_Year,	
        string_field_9 AS CP_Unit,
        double_field_10 AS `2013`,
        double_field_11 AS `2014`,
        double_field_12 AS `2015`,
        double_field_13 AS `2016`,
        double_field_14 AS `2017`,
        double_field_15 AS `2018`,
        double_field_16 AS `2019`,
        double_field_17 AS `2020`,
         double_field_18 AS `2021`,
        double_field_19 AS `2022`,
        double_field_20 AS `2023`,
        double_field_21 AS `2024`,
        double_field_22 AS `2025`,
        double_field_23 AS `2026`,
        double_field_24 AS `2027`,
        double_field_25 AS `2028`,
        double_field_26 AS `2029`,
        double_field_27 AS `2030`,
        double_field_28 AS `2031`,
        double_field_29 AS `2032`,
        double_field_30 AS `2033`,
        double_field_31 AS `2034`,
        double_field_32 AS `2035`,
        double_field_33 AS `2036`,
        double_field_34 AS `2037`,
        double_field_35 AS `2038`,
        double_field_36 AS `2039`,
        double_field_37 AS `2040`,
        double_field_38 AS `2041`,
        double_field_39 AS `2042`,
        double_field_40 AS `2043`,
        double_field_41 AS `2044`,
        double_field_42 AS `2045`,
        double_field_43 AS `2046`,
        double_field_44 AS `2047`,
        double_field_45 AS `2048`,
        double_field_46 AS `2049`,
        double_field_47 AS `2050`,
       
    FROM source)
    
SELECT * from renamed


/*converted_units AS (
    SELECT *,
        -- Multiply all year columns by the conversion factor if CP_Unit is NEDC
        CASE WHEN CP_Unit LIKE '%[NEDC]%' THEN 1.2 ELSE 1.0 END AS conversion_factor
    FROM renamed
),

adjusted_values AS (
    SELECT 
        Company_Name,
        Geography,
        Geography_Code,
        Sector,
        Large_Medium_Classification,
        ISINs,
        SEDOL,
        Level,
        Performance_Compared_to_Previous_Year,
        CP_Unit,
        -- Apply the conversion factor dynamically to all year columns
        `2013` * conversion_factor AS `2013`,
        `2014` * conversion_factor AS `2014`,
        `2015` * conversion_factor AS `2015`,
        `2016` * conversion_factor AS `2016`,
        `2017` * conversion_factor AS `2017`,
        `2018` * conversion_factor AS `2018`,
        `2019` * conversion_factor AS `2019`,
        `2020` * conversion_factor AS `2020`,
        `2021` * conversion_factor AS `2021`,
        `2022` * conversion_factor AS `2022`,
        `2023` * conversion_factor AS `2023`,
        `2024` * conversion_factor AS `2024`,
        `2025` * conversion_factor AS `2025`,
        `2026` * conversion_factor AS `2026`,
        `2027` * conversion_factor AS `2027`,
        `2028` * conversion_factor AS `2028`,
        `2029` * conversion_factor AS `2029`,
        `2030` * conversion_factor AS `2030`,
        `2031` * conversion_factor AS `2031`,
        `2032` * conversion_factor AS `2032`,
        `2033` * conversion_factor AS `2033`,
        `2034` * conversion_factor AS `2034`,
        `2035` * conversion_factor AS `2035`,
        `2036` * conversion_factor AS `2036`,
        `2037` * conversion_factor AS `2037`,
        `2038` * conversion_factor AS `2038`,
        `2039` * conversion_factor AS `2039`,
        `2040` * conversion_factor AS `2040`,
        `2041` * conversion_factor AS `2041`,
        `2042` * conversion_factor AS `2042`,
        `2043` * conversion_factor AS `2043`,
        `2044` * conversion_factor AS `2044`,
        `2045` * conversion_factor AS `2045`,
        `2046` * conversion_factor AS `2046`,
        `2047` * conversion_factor AS `2047`,
        `2048` * conversion_factor AS `2048`,
        `2049` * conversion_factor AS `2049`,
        `2050` * conversion_factor AS `2050`
    FROM converted_units
)

count_nulls AS (
    SELECT
        Company_Name,
        -- Count NULL values across year columns for each company
        SUM(CASE WHEN `2013` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2014` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2015` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2016` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2017` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2018` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2019` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2020` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2021` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2022` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2023` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2024` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2025` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2026` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2027` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2028` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2029` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2030` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2031` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2032` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2033` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2034` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2035` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2036` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2037` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2038` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2039` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2040` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2041` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2042` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2043` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2044` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2045` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2046` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2047` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2048` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2049` IS NULL THEN 1 ELSE 0 END) +
        SUM(CASE WHEN `2050` IS NULL THEN 1 ELSE 0 END) AS null_count
    FROM renamed
    GROUP BY Company_Name
),

filtered AS (
    SELECT 
        r.*
    FROM renamed r
    JOIN count_nulls c
    ON r.Company_Name = c.Company_Name
    WHERE c.null_count <= 5 -- Filter for companies with <= 5 NULL values across year columns
      AND r.CP_Unit IS NOT NULL -- Ensure CP_Unit is not NULL
),

unpivoted AS (
    SELECT 
        Company_Name,
        CP_Unit,
        year,
        value
    FROM renamed
    UNPIVOT (
        value FOR year IN (
            `2013`, `2014`, `2015`, `2016`, `2017`, `2018`, `2019`, `2020`,`2021`,
            `2022`, `2023`, `2024`, `2025`, `2026`, `2027`, `2028`, `2029`,
            `2030`, `2031`, `2032`, `2033`, `2034`, `2035`, `2036`, `2037`,
            `2038`, `2039`, `2040`, `2041`, `2042`, `2043`, `2044`, `2045`,
            `2046`, `2047`, `2048`, `2049`, `2050`
        )
    )
)

SELECT * 
FROM unpivoted 

*/