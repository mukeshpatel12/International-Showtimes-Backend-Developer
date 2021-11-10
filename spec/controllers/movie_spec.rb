require 'rails_helper'

RSpec.describe Api::V1::MoviesController, type: :controller do
  describe "GET index data" do

    before { request.headers["HEADER"] = "12345678" }

    it "all movies to @data" do
      get :index
      expect(assigns(:data)).to eq(Movie.all)
     end
  end
end