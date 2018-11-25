class ActionDispatch::Routing::Mapper
  def draw(routes_name)
    instance_eval(File.read(Rails.root.join("config/#{routes_name}.rb")))
  end
end

Rails.application.routes.draw do
  resources :ar_internal_metadatas
  resources :cities
  resources :claimrequests
  resources :contracts
  resources :cools
  resources :countries
  resources :coupons
  resources :dangs
  resources :offers
  resources :payments
  resources :photos
  resources :properties
  resources :rooms
  resources :schema_migrations
  resources :staffs
  resources :suburbs
  resources :tags
  resources :users
  resources :viewing_logs
  resources :viewings
  draw :route_common
  draw :route_codegen
end