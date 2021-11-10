class Api::V1::MoviesController < ApplicationController

  # all all movie data  json format
  def index
    @data = Movie.all
    render json: @data
  end

  def create
    CreateQueueJob.set(priority: 1).perform_later(movie_params)
  end

  def movie_params
    params.require(:movie).permit(:title)
  end
end
