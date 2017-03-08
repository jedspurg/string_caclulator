require 'test_helper'

class CalculatorServiceTest < ActiveSupport::TestCase
  test '#call for 5*5 to output 25' do
    assert_equal 25, StringCalculatorService.new('5*5').call
  end

  test '#call for 5/5 to output 1' do
    assert_equal 1, StringCalculatorService.new('5/5').call
  end

  test '#call for 5+5 to output 10' do
    assert_equal 10, StringCalculatorService.new('5+5').call
  end

  test '#call for 5-5 to output 0' do
    assert_equal 0, StringCalculatorService.new('5-5').call
  end

  test '#call for 5*3+1+6/2+9*100 to output 919' do
    assert_equal 919, StringCalculatorService.new('5*3+1+6/2+9*100').call
  end

  test '#call for 5*3+1+6/85+9*100 to output 916.07' do
    assert_equal 916.07, StringCalculatorService.new('5*3+1+6/85+9*100').call
  end
end
