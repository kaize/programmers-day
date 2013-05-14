set :user, 'prog73_production'
set :rails_env, 'production'

role :db,  "62.76.191.134", :primary => true # This is where Rails migrations will run
role :app, "62.76.191.134"
role :web, "62.76.191.134"

set :branch do
  raise "Use tag. (Example: TAG=v2)" unless ENV['TAG']
  ENV['TAG']
end
set :deploy_to, "/u/apps/prog73"
set :keep_releases, 15

#set :whenever_command, "bundle exec whenever"
#require "whenever/capistrano"
