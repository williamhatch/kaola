 echo y | rm -rf app/models/* 
 echo y | rm -rf db/migrate/* 

 rails g model property    full_address:string address_street_alpha:string address_street_number:integer address_street_name:string address_street_type:string address_suburb_name:string territorial_authority_name:string post_code:integer   country_id:integer city_id:integer suburb_id:integer   improvement_type:string tenure:string decade_constructed:integer landuse_category:string landuse_code:string floo_rarea:integer land_area:integer dwellings:integer car_parks:integer roof_construction:string roof_construction_short:string roof_condition:string wall_construction:string wall_construction_short:string wall_condition:string land_zone:string estimate_lower:integer estimate_upper:integer   seller_expection_value_start:integer seller_expection_value_end:integer description:string cool_id:integer    --force

rails g model cool  user_id:integer  property_id:integer  --force
 rails g model tag  category:string display_name:string    --force
 rails g model room  room_title:string room_type:integer  floor_area:integer property_id:integer  dang_id:integer   --force
 rails g model photo  description:string  dang_id:integer  --force
 rails g model claimrequest  status:string state_reason:string    --force
 rails g model contract     --force
 rails g model viewing  confirmed_datetime:datetime viewer_status:string buyer_status:string active:boolean    --force
 rails g model viewing_log  datetime:datetime field:string was:string now:string actor:string    --force
 rails g model offer     --force
 rails g model user  name:string email:string phone:string  cool_id:integer  --force
 rails g model payment     --force
 rails g model coupon  coupon_code:string expiry_date:datetime max_uses:integer use_count:integer    --force
 rails g model staff  name:string    --force
 rails g model country  name:string code:string    --force
 rails g model city  name:string code:string    --force
 rails g model suburb  name:string code:string   --force
 rails g model dang something:integer room_id:integer photo_id:integer more --force

rails db:drop db:create db:migrate