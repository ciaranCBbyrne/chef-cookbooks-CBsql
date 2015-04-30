#
# Cookbook Name:: CBsql
# Recipe:: update_importers
#
# Copyright 2015, Ciaran Byrne
#
# All rights reserved - Do Not Redistribute
#

# update check_slave_capacity file with slave ip

# these attributes (node.default[....]) need to be defined in a file attributes/default.rb

ruby_block "update_importer_files" do
	block do
		for i in 1..10
			rc = Chef::Util::FileEdit.new("/rubyfiles/importer#{i}")
			rc.search_file_replace(/myusername/, node.default['CBsql']['database']['username'])
			rc.search_file_replace(/mypassword/, node.default['CBsql']['database']['password'])
			rc.search_file_replace(/mydbname/, node.default['CBsql']['database']['dbname'])
		end
	end	
end