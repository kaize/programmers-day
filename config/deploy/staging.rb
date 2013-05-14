set :user, 'prog73_staging'
set :rails_env, 'staging'

role :db,  "62.76.190.226", :primary => true # This is where Rails migrations will run
role :app, "62.76.190.226"
role :web, "62.76.190.226"

set :branch, "develop"
set :keep_releases, 3
