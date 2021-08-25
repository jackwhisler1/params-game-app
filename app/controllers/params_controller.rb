class ParamsController < ApplicationController
  def query_params
    user_name = params["name"].upcase
    number = params["number"]
    if user_name.upcase.start_with?("A")
      user_name += "! Hey, your name starts with the first letter of the alphabet!"
    end
    
  end

  def url_segment_params
    guess = params[:wildcard].to_i
    if guess < 42
      msg = "Higher!"
    elsif guess > 42
      msg = "Lower!"
    else
      msg = "You win!"
    end
    render json: {Message: msg}
  end
end
