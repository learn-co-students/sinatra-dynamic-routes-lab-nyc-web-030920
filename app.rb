require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
get '/reversename/:name' do
  params[:name].reverse
end

get '/square/:number' do
  (params[:number].to_i ** 2).to_s
end

get '/say/:number/:phrase' do
  @phrase= params[:phrase]
  str=""
  @number= params[:number].to_i
  @number.times do |i|
    str+=" "
   if i==@number-1.to_i
    str += @phrase
    str+="."
   else 
    str+=@phrase
   end
  end
  
  str
  end


get '/say/:word1/:word2/:word3/:word4/:word5' do
  @word1= params[:word1]
  @word2= params[:word2]
  @word3= params[:word3]
  @word4= params[:word4]
  @word5= params[:word5]
  str = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
end
get '/:operation/:number1/:number2' do
  @operation = params[:operation]
  @num1 = params[:number1].to_i
  @num2= params[:number2].to_i
  answer= ""
  if @operation =="add"
    answer= (@num1+@num2).to_s
  elsif @operation== "subtract"
    answer = (@num1 - @num2).to_s
  elsif @operation =="multiply"
      answer = (@num1 * @num2).to_s
  elsif @operation =="divide"
    answer = (@num1 / @num2).to_s
  end
  answer
end
end
