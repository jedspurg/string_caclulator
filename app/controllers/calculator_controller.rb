class CalculatorController < ApplicationController
  def index
  end

  def calculate
    @result = StringCalculatorService.new(params[:equation]).call
    render json: { results: "#{params[:equation]} = #{@result}" }.to_json
  end
end
