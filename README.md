# Mod 1 ActiveRecord Sundae Repo

In `config/database.yml`, you can change the name of the database from `db/sundae.sqlite3` to whatever reflects your project. For example: `db/notes.sqlite3`. Doesn't really matter what you call the db. 



## ActiveRecord Methods
These common ActiveRecord methods will help you interact with your database. Please refer to the ActiveRecord
docs for what they do and how to use them. (If the docs talk about Rails, that is ok! ActiveRecord works very
 similar with or without Rails.)
```
  .create (.new, .save)
  .all
  .count
  .find
  .find_by
  .where
```

#### Notes

*Remember*, any model that will have a corresponding table in the database needs to inherit from `ActiveRecord::Base`
ex:
```
class Sundae < ActiveRecord::Base
  # customer methods defined here
end
```

- To view database, you can run `sqlite3 db/sundae.db`, then can run `.schema` or `.tables` and can run any SQL commands. (Don't need to do this anymore though! ActiveRecord gives us a schema file!)


### Steps to setup Ruby app with activerecord
(New for ActiveRecord 6.0)


## The steps below are provided to you as a reference only. 


1. In root of project, run `bundle init`
2. Add gems: 
  `bundle add activerecord pry sinatra, sinatra-activerecord rake sqlite3 require_all`
  run `bundle install`
3. mkdir config and lib 
4. mkdir lib/models
5. touch config/environment.rb config/database.yml
6. Create your model files and models (make sure to have your models inherit from ActiveRecord::Base)
7. In config/environment.rb:
```
  require 'bundler/setup'
  Bundler.require

  require 'pry'
  require 'tty-prompt'

  ActiveRecord::Base.logger = nil

  require_all 'lib'
```
8. In config/database.yml:
  ```
  development:
    adapter: sqlite3
    database: db/sundae.sqlite3
  ```
9. Touch Rakefile - require ‘config/environment.rb’ and require_relative ‘sinatra/activerecord/rake’ 
10. Run rake -T to make sure we have access to raketasks
11. Run `rake db:create_migration NAME=create_users_table`, 
- `rake db:create_migration NAME=create_orders_table`, 
- `rake db:create_migration NAME=create_sundaes_table`,
- `rake db:create_migration NAME=create_toppings_table`,
- `rake db:create_migration NAME=create_icecreams_table` (will create the db folders if it doesn’t already exist) and will add the migration file to db/migration
12. Write migration file, then run `rake db:migrate`
13. Then can see schema in file structure, can also drop into sqlite3 sundae.db to see the tables and schema, but don’t really need to do that anymore. *Review rollback here*
14. Create seeds in db/seeds.rb and run `rake db:seed`
15. Now can put a pry in environment.rb to run <ModelName>.all and see your seeds.

Make sure your models inherit from `ActiveRecord::Base`

## Video link for the CLI Sundae app
  -"https://youtu.be/fGITGAC0l-k"