require_relative 'lib/finder'
require_relative 'lib/result'

print 'Enter file name: '
file_name = STDIN.gets.strip

file_search = Finder.new
file_search.find('/home/', file_name)
file_search.clone_remove

result = Result.new(file_search.found_files)
result.print_result

