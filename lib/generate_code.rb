class Code
  attr_reader :secret_code

  def code_generator
    array = []
    letters = ["r","g","b","y"]
    4.times { array << letters.sample }
    array.join.upcase
  end


end
