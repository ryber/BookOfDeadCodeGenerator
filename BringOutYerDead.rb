#!/usr/bin/ruby

# $ git diff --word-diff=porcelain --unified=0  365dcda1d9d90249a12b72d5c38d9cefe4860013 e914071bd374798b853d27f65df985d499a980fb
require 'rubygems'
require 'grit'
include Grit

puts "Hello WOrld"

repo = Repo.new("~/sites/Ninject-Examples/")

#repo.commits.each do |commit|
#		puts commit.headers
#	end
	
repo.commit_diff('7080cf24b07c27ece142e91aee4cc7d247318cd0').each do |dif|
	puts dif.deleted_file
end

