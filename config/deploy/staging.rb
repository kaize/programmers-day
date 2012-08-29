set :user, 'programmers_day_staging'
set :rails_env, 'staging'

role :db,  "62.76.184.52", :primary => true # This is where Rails migrations will run
role :app, "62.76.184.52"
role :web, "62.76.184.52"

set :branch, "develop"
set :keep_releases, 3
