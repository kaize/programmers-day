set :user, 'programmers_day_production'
set :rails_env, 'production'

role :db,  "", :primary => true # This is where Rails migrations will run
role :app, ""
role :web, ""

set :branch do
  raise "Use tag. (Example: TAG=v2)" unless ENV['TAG']
  ENV['TAG']
end
set :deploy_to, "/u/apps/programmers-day"
set :keep_releases, 15

#set :whenever_command, "bundle exec whenever"
#require "whenever/capistrano"
