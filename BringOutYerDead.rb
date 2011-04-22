#!/usr/bin/env ruby

# $ git diff --word-diff=porcelain --unified=0  365dcda1d9d90249a12b72d5c38d9cefe4860013 e914071bd374798b853d27f65df985d499a980fb

require 'grit'
include Grit

puts "Hello WOrld"

repo = Repo.new("/Maestro5/maestro/")

#repo.commits.each do |commit|
#		puts commit.headers
#	end
	
repo.commit_diff('35cf41e9d093b63dd84b6c6a9995748872c9cfc3').count

