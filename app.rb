require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:n' do
    (params[:n].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    "#{params[:phrase]}" * (params[:number].to_i)
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:n1/:n2' do
    n1 = params[:n1]
    n2 = params[:n2]
    case params[:operation]
    when "add"
      "#{n1.to_i + n2.to_i}"
    when "subtract"
      "#{n1.to_i - n2.to_i}"
    when "multiply"
      "#{n1.to_i * n2.to_i}"
    when "divide"
      "#{n1.to_i / n2.to_i}"
    else
      "Hello, you shouldn't be here."
    end
  end

end