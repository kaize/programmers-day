set :stages, %w(production staging)
set :default_stage, "staging"

require 'capistrano/ext/multistage'
require 'capi/unicorn'

set :application, "prog73"
set :rvm_type, :system

set :scm, :git
set :repository,  "git://github.com/kaize/programmers-day.git"

set :use_sudo, false
set :ssh_options, :forward_agent => true
default_run_options[:pty] = true

namespace :deploy do
  desc "Symlinks the database.yml"
  task :symlink_db, :roles => :app do
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
  end
end

namespace :capi do
  desc 'invoke rake task. Example: cap capi:task_invoke TASK="db:seed"'
  task :task_invoke  do
    run "cd #{deploy_to}/current && bundle exec rake #{ENV['TASK']} RAILS_ENV=#{rails_env}"
  end
end

before 'deploy:finalize_update', 'deploy:symlink_db'
after "deploy:restart", "unicorn:stop"
after "deploy:update", "deploy:cleanup"

require 'airbrake/capistrano'
