#
# Cookbook Name:: CBsql
# Recipe:: ruby_env_setup
#
# Copyright 2015, Ciaran Byrne
#
# All rights reserved - Do Not Redistribute
#

# install the ruby gems that will be required to by the node
#bash 'install_gems' do
#	code <<-EOH
#		sudo yum install gcc mysql-devel ruby-devel rubygems -y
#		sudo gem install 'rubygems'
#		sudo gem install 'mysql2'
#		sudo gem install 'net-ssh'
#		sudo gem install 'json'
#	EOH
#	action :run
#end

package 'gcc' do
	action :install
end

package 'mysql-devel' do
	action :install
end

package 'ruby-devel' do
	action :install
end

package 'rubygems' do
	action :install
end

#gem_package 'rubygems' do
#	action :install
#end

gem_package 'mysql2' do
	action :install
end

gem_package 'net-ssh' do
	action :install
end

gem_package 'json' do
	action :install
end
