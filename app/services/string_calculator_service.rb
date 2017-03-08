class StringCalculatorService
  def initialize(string)
    @string = string
  end

  def call
    #eval @string <-- Fast, but very dangerous
    trim_decimal(calculate(@string))
  end

  private

  def trim_decimal(number)
    integer, float = number.to_i, number.to_f
    integer == float ? integer : float.to_d.round(2, :truncate).to_f
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
