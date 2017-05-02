lock '3.8.1'

set :application, 'myapp'
set :repo_url, 'git@github.com:strtwtsn/myapp.git'



# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp


set :deploy_user, 'wcmc'


set :backup_path, "/home/#{fetch(:deploy_user)}/Backup"



# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/home/#{fetch(:deploy_user)}/#{fetch(:application)}"

# Default value for :scm is :git
set :scm, :git
set :scm_username, "unepwcmc-read"


set :rvm_type, :user
set :rvm_ruby_version, '2.3.4'



set :ssh_options, {
  forward_agent: true,
}


# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
#set :log_level, :debug

# Default value for :pty is false
set :pty, true

# Default value for :linked_files is []
#set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')

set :linked_files, %w{config/database.yml} 

# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')


# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 5

set :passenger_restart_with_touch, false


# if you haven't already specified


# if you want to remove the local dump file after loading
set :db_local_clean, true

# if you want to remove the dump file from the server after downloading
set :db_remote_clean, true

# if you want to exclude table from dump
set :db_ignore_tables, []

# if you want to exclude table data (but not table schema) from dump
set :db_ignore_data_tables, []

# configure location where the dump file should be created
set :db_dump_dir, "./db"

# If you want to import assets, you can change default asset dir (default = system)
# This directory must be in your shared directory on the server

# if you are highly paranoid and want to prevent any push operation to the server
set :disallow_pushing, false

# if you prefer bzip2/unbzip2 instead of gzip
set :compressor, :bzip2
