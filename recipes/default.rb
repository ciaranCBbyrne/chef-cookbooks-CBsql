#
# Cookbook Name:: CBsql
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#include_recipe 'CBsql::dbSetup'

mysql_service 'default' do
  port '3306'
  version '5.5'
  initial_root_password "#{node.default['CBsql']['database']['password']}"
  action [:create, :start]
end

mysql_config 'default' do
  source 'mysite.cnf.erb'
  notifies :restart, 'mysql_service[default]'
  action :create
end

mysql2_chef_gem 'default' do
	action :install
end

connection_params = {
	:host => "#{node.default['CBsql']['database']['hosturl']}",
	:username => "#{node.default['CBsql']['database']['username']}",
	:password => "#{node.default['CBsql']['database']['password']}"
}

mysql_database "#{node.default['CBsql']['database']['dbname']}" do
	connection connection_params
	action :create
end

# set up the environment to run ruby 
include_recipe 'CBsql::ruby_env_setup'

# drop files needed for replicating into the mysql db
include_recipe 'CBsql::import_files'

# set credentials in importer files
include_recipe 'CBsql::update_importers'

# set times to run replication jobs
include_recipe 'CBsql::set_cron_jobs'

# update etc/sudoers
include_recipe 'CBsql::update_sudo_tty'