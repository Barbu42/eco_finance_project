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


