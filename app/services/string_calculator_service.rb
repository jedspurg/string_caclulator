class StringCalculatorService
  def initialize(string)
    @string = string
  end

  def call
    #eval @string <-- Fast, but very dangerous
    sprintf("%0.02f", calculate(@string))
  end

  def calculate(string)
    return string.to_f if !string.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/).nil?

    ['+', '-', '*', '/'].each do |operator|
      array = string.split(operator)
      next if array.size < 2
      return array.inject{ |memo, obj| calculate(memo).public_send(operator, calculate(obj)) }
    end
  end
end
