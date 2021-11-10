require 'rails_helper'

RSpec.describe Api::V1::JobsController, type: :controller do
  describe "GET index" do

    before { request.headers["HEADER"] = "12345678" }

    it "returns successful response" do
      get :index
      expect(response).to be_successful
    end

    it "assigns all movies to @data" do
      get :index
      expect(assigns(:data)).to eq(Job.all)
     end
  end
end