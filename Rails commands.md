How to install rails:
`gem install rails`

How to create a new rails project:
`rails new` + Name_of_app

Check everything is in the Gemfile if using PostgreSQL add gem 'pg' then run:
`bundle`

How to set up database:
`rails db:migrate`

If duplicate table error comes up run:
`rails db:reset`

If pending migration error occurs run:
`bin/rake db:migrate RAILS_ENV=test`

Or if there's still trouble run:
database:
      override:
        - `bundle exec rake db:drop`
        - `bundle exec rake db:create RAILS_ENV=test`
        - `bundle exec rake db:migrate RAILS_ENV=test`

How to set up a controller with view:
`rails generate controller` + Name

How to set up a model:
`rails generate model` + Name

Update routes.rb file in the config folder then to see the routes run:
`rails routes`

How to run the application in the brower:
`rails s`

Only had this line if you want a params message to show up when running the app:
`<%= debug(params) if Rails.env.development? %>`

Use this to reset gems when changing a version such as upgrading a gem:
`gem pristine --all`

RAILS_SERVE_STATIC_FILES=true rails server -e production ????


To deploy app to heroku:
`heroku container:login`
`heroku container:push tastybot`
Then release it"
`heroku container:release web`

To run local environment in production mode:
`rails s -e production`

`heroku logs --tail --app tastybot`
`heroku pg:info -a ha-app`

To find out which remote repo your container is pointing to:
`git config --list | grep heroku`