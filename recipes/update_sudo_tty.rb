#
# Cookbook Name:: CBsql
# Recipe:: update_sudo_tty
#
# Copyright 2015, Ciaran Byrne
#
# All rights reserved - Do Not Redistribute
#

# allow for master to run sudo commands externally
ruby_block "update_sudo_tty" do
	block do
		rc = Chef::Util::FileEdit.new("etc/sudoers")
		rc.search_file_replace(/\p{Blank}requiretty/, "!requiretty")
		rc.write_file
	end
end