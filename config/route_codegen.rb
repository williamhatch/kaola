match 'properties(/:action(/:id(.:format)))', via: [:options], to:  lambda {|env| [200, {'Content-Type' => 'text/plain'}, ["OK
"]]}
match 'properties/batch_update(.:format)', action: :batch_update, controller: :properties, via: [:post]
match 'cools(/:action(/:id(.:format)))', via: [:options], to:  lambda {|env| [200, {'Content-Type' => 'text/plain'}, ["OK
"]]}
match 'cools/batch_update(.:format)', action: :batch_update, controller: :cools, via: [:post]
match 'tags(/:action(/:id(.:format)))', via: [:options], to:  lambda {|env| [200, {'Content-Type' => 'text/plain'}, ["OK
"]]}
match 'tags/batch_update(.:format)', action: :batch_update, controller: :tags, via: [:post]
match 'rooms(/:action(/:id(.:format)))', via: [:options], to:  lambda {|env| [200, {'Content-Type' => 'text/plain'}, ["OK
"]]}
match 'rooms/batch_update(.:format)', action: :batch_update, controller: :rooms, via: [:post]
match 'photos(/:action(/:id(.:format)))', via: [:options], to:  lambda {|env| [200, {'Content-Type' => 'text/plain'}, ["OK
"]]}
match 'photos/batch_update(.:format)', action: :batch_update, controller: :photos, via: [:post]
match 'claimrequests(/:action(/:id(.:format)))', via: [:options], to:  lambda {|env| [200, {'Content-Type' => 'text/plain'}, ["OK
"]]}
match 'claimrequests/batch_update(.:format)', action: :batch_update, controller: :claimrequests, via: [:post]
match 'contracts(/:action(/:id(.:format)))', via: [:options], to:  lambda {|env| [200, {'Content-Type' => 'text/plain'}, ["OK
"]]}
match 'contracts/batch_update(.:format)', action: :batch_update, controller: :contracts, via: [:post]
match 'viewings(/:action(/:id(.:format)))', via: [:options], to:  lambda {|env| [200, {'Content-Type' => 'text/plain'}, ["OK
"]]}
match 'viewings/batch_update(.:format)', action: :batch_update, controller: :viewings, via: [:post]
match 'viewing_logs(/:action(/:id(.:format)))', via: [:options], to:  lambda {|env| [200, {'Content-Type' => 'text/plain'}, ["OK
"]]}
match 'viewing_logs/batch_update(.:format)', action: :batch_update, controller: :viewing_logs, via: [:post]
match 'offers(/:action(/:id(.:format)))', via: [:options], to:  lambda {|env| [200, {'Content-Type' => 'text/plain'}, ["OK
"]]}
match 'offers/batch_update(.:format)', action: :batch_update, controller: :offers, via: [:post]
match 'users(/:action(/:id(.:format)))', via: [:options], to:  lambda {|env| [200, {'Content-Type' => 'text/plain'}, ["OK
"]]}
match 'users/batch_update(.:format)', action: :batch_update, controller: :users, via: [:post]
match 'payments(/:action(/:id(.:format)))', via: [:options], to:  lambda {|env| [200, {'Content-Type' => 'text/plain'}, ["OK
"]]}
match 'payments/batch_update(.:format)', action: :batch_update, controller: :payments, via: [:post]
match 'coupons(/:action(/:id(.:format)))', via: [:options], to:  lambda {|env| [200, {'Content-Type' => 'text/plain'}, ["OK
"]]}
match 'coupons/batch_update(.:format)', action: :batch_update, controller: :coupons, via: [:post]
match 'staffs(/:action(/:id(.:format)))', via: [:options], to:  lambda {|env| [200, {'Content-Type' => 'text/plain'}, ["OK
"]]}
match 'staffs/batch_update(.:format)', action: :batch_update, controller: :staffs, via: [:post]
match 'countries(/:action(/:id(.:format)))', via: [:options], to:  lambda {|env| [200, {'Content-Type' => 'text/plain'}, ["OK
"]]}
match 'countries/batch_update(.:format)', action: :batch_update, controller: :countries, via: [:post]
match 'cities(/:action(/:id(.:format)))', via: [:options], to:  lambda {|env| [200, {'Content-Type' => 'text/plain'}, ["OK
"]]}
match 'cities/batch_update(.:format)', action: :batch_update, controller: :cities, via: [:post]
match 'suburbs(/:action(/:id(.:format)))', via: [:options], to:  lambda {|env| [200, {'Content-Type' => 'text/plain'}, ["OK
"]]}
match 'suburbs/batch_update(.:format)', action: :batch_update, controller: :suburbs, via: [:post]
match 'dangs(/:action(/:id(.:format)))', via: [:options], to:  lambda {|env| [200, {'Content-Type' => 'text/plain'}, ["OK
"]]}
match 'dangs/batch_update(.:format)', action: :batch_update, controller: :dangs, via: [:post]
