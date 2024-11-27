with 

source as (

    select * from {{ source('eco_finance', 'company_emissions_overview') }}

),

renamed as (

    select
        string_field_0,
        string_field_1,
        string_field_2,
        string_field_3,
        string_field_4,
        string_field_5,
        string_field_6,
        string_field_7,
        string_field_8,
        string_field_9,
        double_field_10,
        double_field_11,
        double_field_12,
        double_field_13,
        double_field_14,
        double_field_15,
        double_field_16,
        double_field_17,
        double_field_18,
        double_field_19,
        double_field_20,
        double_field_21,
        double_field_22,
        double_field_23,
        double_field_24,
        double_field_25,
        double_field_26,
        double_field_27,
        double_field_28,
        double_field_29,
        double_field_30,
        double_field_31,
        double_field_32,
        double_field_33,
        double_field_34,
        double_field_35,
        double_field_36,
        double_field_37,
        double_field_38,
        double_field_39,
        double_field_40,
        double_field_41,
        double_field_42,
        double_field_43,
        double_field_44,
        double_field_45,
        double_field_46,
        double_field_47

    from source

)

select * from renamed
