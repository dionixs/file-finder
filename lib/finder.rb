class Finder
  def find(path, file_name)
    if Dir.entries(path).include?(file_name)
      puts "Your file found: #{path}#{file_name}"
    else
      Dir.chdir(path) do
        folders = Dir.glob('**/*').select { |d| File.directory? d }

        folders.sort.each do |folder|
          find(path + folder + '/', file_name)
        end
      end
    end
  rescue StandardError
  end
end
