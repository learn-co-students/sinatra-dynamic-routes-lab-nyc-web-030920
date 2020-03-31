require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name = params[:name]
    @name = @name.reverse 
    "#{@name}"
  end

  get '/square/:number' do 
    number = params[:number].to_i
    "#{number ** 2}"
  end

  get '/say/:number/:phrase' do 
    number = params[:number].to_i
    phrase = params[:phrase].to_s 
    ans = ''
    number.times do 
      ans += phrase
    end
    ans
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operator = params[:operation].to_s 
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    if operator == "add"
      "#{number1 + number2}"
    elsif operator == "subtract"
      "#{number1 - number2}"
    elsif operator == "multiply"
      "#{number1 * number2}"
    else
      "#{number1 / number2}"
    end
  end


end