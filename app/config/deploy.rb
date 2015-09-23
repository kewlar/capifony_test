set :application, "Capifony Test"
set :domain,      "localhost"
set :deploy_to,   "/home/vagrant/www/capifony_test.sf"
set :app_path,    "app"

set :repository,  "git@github.com:kewlar/capifony_test.git"
set :scm,         :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `subversion`, `mercurial`, `perforce`, or `none`

set :use_sudo, false
set :user, "vagrant"
set :ssh_options, {port: 2222, keys: ["/Users/kewlar/vagrant/capifony_test/.vagrant/machines/default/virtualbox/private_key"]}

set :model_manager, "doctrine"
# Or: `propel`

role :web,        domain                         # Your HTTP server, Apache/etc
role :app,        domain, :primary => true       # This may be the same as your `Web` server

#set :shared_files, [app_path + "/config/parameter.yml"]
#set :shared_children, [app_path + "/logs", "vendor"]
set :use_composer, true
#set :update_vendors, true
#set :writable_dirs, [app_path + "/cache", app_path + "/logs"]
#set :webserver_user, "vagrant"
#set :permission_method, "acl"
#set :use_set_permissions, true

set  :keep_releases,  3

# Be more verbose by uncommenting the following line
# logger.level = Logger::MAX_LEVEL
