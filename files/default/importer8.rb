
require 'rubygems'
require 'mysql2'
require 'open-uri'

#my = Mysql::Client.new(hostname,username,password,database)

con = Mysql2::Client.new(:hostname => '127.0.0.1',
					:username => "#{myusername}",
					:password => "#{mypassword}",
					:database => "#{mydbname}")		

con.query("CREATE TABLE IF NOT EXISTS words8(id INT PRIMARY KEY AUTO_INCREMENT, value VARCHAR(50));")

fileread = open("../../rubyfiles/datafile8.txt").read

fileread.each_line do |word|
	word.split(" ").each do |str|
		outstring = str.gsub(/[^a-zA-Z0-9\-]/,"")
		con.query("INSERT INTO words8(value)
				VALUES('"+outstring+"');")
	end
end


puts "Done!"

con.close