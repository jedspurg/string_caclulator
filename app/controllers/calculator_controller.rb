class CalculatorController < ApplicationController
  def index
  end

  def calculate
    @result = StringCalculatorService.new(params[:equation]).call
    render json: { equation: params[:equation], result: @result }.to_json
  end
end
