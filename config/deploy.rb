set :rvm_type, :system
set :stages, %w(production staging)
set :default_stage, "staging"
#set :whenever_command, "bundle exec whenever" # update crontab

set :use_sudo, false
set :ssh_options, :forward_agent => true
default_run_options[:pty] = true

set :application, "programmers-day"

set :scm, :git
set :repository,  "https://github.com/kaize/programmers-day.git"

namespace :deploy do
  desc "Make symlink for database yaml"
  task :symlink_db do
    run "ln -nfs #{release_path}/config/database.yml.sample #{release_path}/config/database.yml"
  end
end

after "deploy:finalize_update", "deploy:symlink_db"
after "deploy:restart", "unicorn:stop"
after "deploy:update", "deploy:cleanup"

require 'airbrake/capistrano'
