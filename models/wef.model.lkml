connection: "wef-supply-chain"

# include all the views
include: "/views/**/*.view"

# datagroup: wef_default_datagroup {
#   # sql_trigger: SELECT MAX(id) FROM etl_log;;
#   max_cache_age: "1 hour"
# }

# persist_with: wef_default_datagroup

# explore: basket_item {}

explore: basket_metrics {}

# explore: country {}
#
# explore: country_demand {}
#
# explore: country_metrics {}
#
# explore: country_news {}
#
# explore: country_position {}
#
# explore: country_production {}
#
# explore: resources {}
#
# explore: view_metrics {}
