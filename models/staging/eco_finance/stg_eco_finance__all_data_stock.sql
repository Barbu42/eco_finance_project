WITH Sub1 AS (
SELECT 
    *
    ,EXTRACT(YEAR FROM Date) AS year
FROM {{ source('eco_finance', 'all_data_stock') }}
)
SELECT 
    Date AS date_date
    ,Ticker AS ticker
    ,ROUND(Open,2) AS open
    ,ROUND(High,2) AS high
    ,ROUND(Low,2) AS low
    ,ROUND(Close,2) AS close
    ,ROUND(Volume,2) AS volume
    ,ROUND(Dividends,2) AS dividends
    ,ROUND(`Stock Splits`,2) AS stock_splits
FROM Sub1
WHERE year > 2000 AND Open > 0
