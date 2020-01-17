require_relative 'lib/finder'

puts 'Enter file name:'
file_name = STDIN.gets.strip

file_search = Finder.new
file_search.find('/home/', file_name)
