require 'sinatra'
require 'sinatra/reloader'

  SECRET_NUMBER = rand(101)
  number = SECRET_NUMBER

  def check_guess(guess)
    if guess.to_i == SECRET_NUMBER
      "You got it right! The SECRET NUMBER is #{SECRET_NUMBER}"
    elsif guess.to_i - SECRET_NUMBER > 5
      "Way too high!"
    elsif guess.to_i > SECRET_NUMBER
      "Too high!"
    elsif SECRET_NUMBER - guess.to_i > 5
      "Way too low!"
    elsif guess.to_i < SECRET_NUMBER
      "Too low!"
    end
  end

def check_color(guess)
    if guess.to_i == SECRET_NUMBER
      "green"
    elsif guess.to_i - SECRET_NUMBER > 5
      "red"
    elsif guess.to_i > SECRET_NUMBER
      "#ffe6e6"
    elsif SECRET_NUMBER - guess.to_i > 5
      "red"
    elsif guess.to_i < SECRET_NUMBER
      "#ffe6e6"
    end
  end


get '/' do
  guess = params["guess"]
  message = check_guess(guess)
  color = check_color(guess)
  erb :index, :locals => {:number => number, :message => message, :color => color}
end
