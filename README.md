# G11n Ruby Sample App

Sample Ruby on Rails app 

## Prerequisites 

1. Install [locales_service](https://github.com/jessiejuachon/g11n_locale_service_ruby) gem.

2. Install Rails
Refer to [Installing Rails](https://guides.rubyonrails.org/getting_started.html#creating-a-new-rails-project-installing-rails)  guide.

3. Install the gem dependencies 
```
$ bundle install
```

4. Start up the Web Server
```
$ bin/rails server
```

5. Open the UI in a browser, passing the expected parameters. For example:
```http://localhost:3000/locales?product=CloudHealth&version=1.0.0&displayLanguage=en&cacheExpired=true``` 

## Notes
- Notice that on browser load, it will display a hardoded, cached response that is set in [locales_service.rb](https://gitlab.eng.vmware.com/jjuachon/g11n_locale_service_ruby/-/blob/main/lib/locales_service.rb#L5). Succeeding page loads/refreshes will display the response body from VIP service.
- If you open the server log, you will see the start and end timestamps of the main thread (get_locales), as well as that of the spawned thread (fetch_locales). For example:
```
...
START get_locales at 2022-01-28 03:56:51 +0000
END get_locales at 2022-01-28 03:56:51 +0000
  Rendering locales/index.html.erb
START fetch_locales at: 2022-01-28 03:56:51 +0000
  Rendered locales/index.html.erb (Duration: 0.2ms | Allocations: 41)
Completed 200 OK in 2ms (Views: 1.8ms | ActiveRecord: 0.0ms | Allocations: 432)

END fetch_locales at: 2022-01-28 03:56:54 +0000
```

