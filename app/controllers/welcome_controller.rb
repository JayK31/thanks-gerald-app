class WelcomeController < ApplicationController

  def reverse
    word = params[:h1Text]
    # NEED TO USE THE FORMAT BELOW!!!
    render json: { h1Text: word.reverse.upcase! }
  end

end
