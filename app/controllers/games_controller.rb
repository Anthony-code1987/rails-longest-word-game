require "json"
require "open-uri"

class GamesController < ApplicationController
  def random_letter
    ('A'..'Z').to_a.sample
  end

  def new
    random_letters = Array.new(10) { random_letter }
    @letters = random_letters.join
    raise
  end

  def score
    @word = params[:word]
    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    attempt = URI.open(url).read
    hash = JSON.parse(attempt)


    @word

    @letters
    letter_from_letters = @letters.each do |letter|
      letter
    end
  end
end

 # if hash["found"] == true && @word.include?(@letters)
    #   @word
    # else
    #   @result = "Sorry but #{@word} can't be built out of #{@letters}"
    # end
