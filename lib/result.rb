class Result
  def initialize(result)
    @result = result
  end

  def print_result
    @result.each do |item|
      puts item
    end
  end
end