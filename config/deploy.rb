set :application, "wishlist"
set :repository, "git@github.com:csamuel/wishlist.git"

# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
set :deploy_to, "/home/csamuel/apps/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
set :scm, :git

server "itcannot.be", :app, :web, :db, :primary => true

set :user, "csamuel"
set :use_sudo, false

namespace :passenger do
  desc "Restart Application"
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end
end

after :deploy, "passenger:restart"

