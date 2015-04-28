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
  initial_root_password 'alfiebyrne'
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
	:host => '127.0.0.1',
	:username => 'root',
	:password => 'alfiebyrne'
}

mysql_database 'library' do
	connection connection_params
	action :create
end

# set up the environment to run ruby 
include_recipe 'CBsql::ruby_env_setup'

# drop files needed for replicating into the mysql db
include_recipe 'CBsql::import_files'

# set times to run replication jobs
include_recipe 'CBsql::set_cron_jobs'