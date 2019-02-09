match 'properties(/:action(/:id(.:format)))', via: [:options], to:  lambda {|env| [200, {'Content-Type' => 'text/plain'}, ["OK
"]]}

match 'dangs/batch_update(.:format)', action: :batch_update, controller: :dangs, via: [:post]
