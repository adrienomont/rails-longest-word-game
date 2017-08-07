class LongestWordController < ApplicationController
  def game
    @grid = generate_grid
    @query = params[:query]
  end

  def score
    @start_time = params[:start]
    @end_time = params[:end_time]
  end


  def generate_grid
  # TODO: generate random grid of letters
  Array.new(9){[*"A".."Z"].sample}.join
  end

  # def score(start_time, end_time)
  #   time = end_time - start_time
  #   return (1 - (time / 60)).to_f
  # end


end
