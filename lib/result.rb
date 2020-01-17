class Result
  def initialize(result)
    @result = result
  end

  def print_result
    if @result == []
      puts "File not found!"
    else
      puts "Found files: "
      @result.each do |item|
        puts item
      end
    end
  end
end