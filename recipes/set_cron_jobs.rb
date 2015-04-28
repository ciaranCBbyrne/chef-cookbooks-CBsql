#
# Cookbook Name:: CBsql
# Recipe:: set_cron_jobs
#
# Copyright 2015, Ciaran Byrne
#
# All rights reserved - Do Not Redistribute
#

# check into chef server to keep in line with recipe changes
cron 'chef_check_in' do
	minute '0'
	command "sudo chef-client"
end

# run the importer file on node
cron 'start_transfer1' do
	minute '*/9'
	command "ruby ../../rubyfiles/importer1.rb"
end

cron 'start_transfer2' do
	minute '*/9'
	command "ruby ../../rubyfiles/importer2.rb"
end

cron 'start_transfer3' do
	minute '*/9'
	command "ruby ../../rubyfiles/importer3.rb"
end

cron 'start_transfer4' do
	minute '*/9'
	command "ruby ../../rubyfiles/importer4.rb"
end

cron 'start_transfer5' do
	minute '*/9'
	command "ruby ../../rubyfiles/importer5.rb"
end

cron 'start_transfer6' do
	minute '*/9'
	command "ruby ../../rubyfiles/importer6.rb"
end

cron 'start_transfer7' do
	minute '*/9'
	command "ruby ../../rubyfiles/importer7.rb"
end

cron 'start_transfer8' do
	minute '*/9'
	command "ruby ../../rubyfiles/importer8.rb"
end

cron 'start_transfer9' do
	minute '*/9'
	command "ruby ../../rubyfiles/importer9.rb"
end

cron 'start_transfer10' do
	minute '*/9'
	command "ruby ../../rubyfiles/importer10.rb"
end