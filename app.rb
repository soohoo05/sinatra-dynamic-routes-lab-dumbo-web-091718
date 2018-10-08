require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name=params[:name]
    @name.reverse!
  end

  get '/square/:number' do
    @squared=(params[:number].to_i*params[:number].to_i).to_s
    @squared
  end

  get '/say/:number/:phrase' do
    @string=""
    @number=params[:number].to_i
    @phrase=params[:phrase]
    @number.times{@string+=@phrase}
    @string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
end

get '/:operation/:number1/:number2' do
  if params[:operation] == "add"
    @number =params[:number1].to_i+params[:number2].to_i
    @number.to_s
  elsif params[:operation] == "multiply"
    @number =params[:number1].to_i*params[:number2].to_i
    @number.to_s
  elsif params[:operation] == "divide"
    @number =params[:number1].to_i/params[:number2].to_i
    @number.to_s
  elsif params[:operation] == "subtract"
    @number =params[:number1].to_i-params[:number2].to_i
    @number.to_s
  end
end
end
