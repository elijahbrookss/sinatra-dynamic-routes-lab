require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number *= @number}"
  end

  get '/say/:number/:phrase' do
    stri = []

    params[:number].to_i.times do
      stri << params[:phrase]
    end
    stri.join
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    stri = []
    5.times do |t|
      stri << params["word#{t+1}"]
    end
    stri = stri.join(" ")
    "#{stri}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    case params[:operation]
    when "add"
      (num1 + num2).to_s
    when "subtract"
      (num1 - num2).to_s
    when "multiply"
      (num1 * num2).to_s
    when "divide"
      (num1 / num2).to_s
    end
    
  end


end
