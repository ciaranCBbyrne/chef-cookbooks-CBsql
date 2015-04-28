#
# Cookbook Name:: CBsql
# Recipe:: import_files
#
# Copyright 2015, Ciaran Byrne
#
# All rights reserved - Do Not Redistribute
#

# make a directory on the node for the slave checker to sit
directory '/rubyfiles' do
	owner 'root'
	group 'root'
	mode '0755'
	action :create
end

# transfer files from the recipe into the node for use
cookbook_file 'importer1.rb' do
	path '/rubyfiles/importer1.rb'
	action :create
end

cookbook_file 'importer2.rb' do
	path '/rubyfiles/importer2.rb'
	action :create
end

cookbook_file 'importer3.rb' do
	path '/rubyfiles/importer3.rb'
	action :create
end

cookbook_file 'importer4.rb' do
	path '/rubyfiles/importer4.rb'
	action :create
end

cookbook_file 'importer5.rb' do
	path '/rubyfiles/importer5.rb'
	action :create
end

cookbook_file 'importer6.rb' do
	path '/rubyfiles/importer6.rb'
	action :create
end

cookbook_file 'importer7.rb' do
	path '/rubyfiles/importer7.rb'
	action :create
end

cookbook_file 'importer8.rb' do
	path '/rubyfiles/importer8.rb'
	action :create
end

cookbook_file 'importer9.rb' do
	path '/rubyfiles/importer9.rb'
	action :create
end

cookbook_file 'importer10.rb' do
	path '/rubyfiles/importer10.rb'
	action :create
end

cookbook_file 'datafile1.txt' do
	path '/rubyfiles/datafile1.txt'
	action :create
end

cookbook_file 'datafile2.txt' do
	path '/rubyfiles/datafile2.txt'
	action :create
end

cookbook_file 'datafile3.txt' do
	path '/rubyfiles/datafile3.txt'
	action :create
end

cookbook_file 'datafile4.txt' do
	path '/rubyfiles/datafile4.txt'
	action :create
end

cookbook_file 'datafile5.txt' do
	path '/rubyfiles/datafile5.txt'
	action :create
end

cookbook_file 'datafile6.txt' do
	path '/rubyfiles/datafile6.txt'
	action :create
end

cookbook_file 'datafile7.txt' do
	path '/rubyfiles/datafile7.txt'
	action :create
end

cookbook_file 'datafile8.txt' do
	path '/rubyfiles/datafile8.txt'
	action :create
end

cookbook_file 'datafile9.txt' do
	path '/rubyfiles/datafile9.txt'
	action :create
end

cookbook_file 'datafile10.txt' do
	path '/rubyfiles/datafile10.txt'
	action :create
end