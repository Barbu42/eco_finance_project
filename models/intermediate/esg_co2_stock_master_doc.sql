SELECT 
        * EXCEPT (`Niv de pollution`)
FROM {{ ref('big_co2_esg_company_') }}
LEFT JOIN {{ ref('stg_eco_finance__all_data_stock') }}
USING (ticker)