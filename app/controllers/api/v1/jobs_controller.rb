class Api::V1::JobsController < ApplicationController
  def index
    @data = Job.all
    render json: @data
  end
end
