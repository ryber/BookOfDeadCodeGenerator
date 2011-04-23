#!/usr/bin/ruby

require 'rubygems'
require 'grit'
include Grit


Git.git_timeout = 100
	
result = ''

Repo.new(".").commit_diff('d7a29fc3143cad250a6e31226710d6492ffeb296').each do |dif|
	dif.diff.each_line do |line|
		if(line[0,1] == '-')
			result << line[1,line.length].gsub(' ','').gsub('	','').gsub(/\n/,'').gsub(/\r/,'')
		end
	end
end

puts result.scan(/.{1,120}/).join("\n")


