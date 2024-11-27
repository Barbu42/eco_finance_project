SELECT
Company_Name,
CP_Unit,
year,
adjusted_value
FROM {{ ref('stg_eco_fin_comp_conv_factor') }}