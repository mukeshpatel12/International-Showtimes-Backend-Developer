class ApplicationController < ActionController::API
  before_action :check_header_authentication

  private

  def check_header_authentication
    if request.headers["HEADER"] == "12345678"
      return true
    else
      render json: { errors: ['Not Authenticated'] }, status: :unauthorized
    end
  end
end
