 echo y | rm -rf app/models/* 
 echo y | rm -rf db/migrate/* 

 rails g model property    full_address:string address_street_alpha:string address_street_number:integer address_street_name:string address_street_type:string address_suburb_name:string territorial_authority_name:string post_code:integer   country_id:integer city_id:integer suburb_id:integer   improvement_type:string tenure:string decade_constructed:integer landuse_category:string landuse_code:string floo_rarea:integer land_area:integer dwellings:integer car_parks:integer roof_construction:string roof_construction_short:string roof_condition:string wall_construction:string wall_construction_short:string wall_condition:string land_zone:string estimate_lower:integer estimate_upper:integer   seller_expection_value_start:integer seller_expection_value_end:integer description:string cool_id:integer    --force

rails g model cool  user_id:integer  property_id:integer  --force
 

rails db:drop db:create db:migrate
