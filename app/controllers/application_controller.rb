class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotFound, with: :not_found
    rescue_from ActionController::BadRequest, with: :bad_request
    rescue_from StandardError, with: :general
    private
    def not_found(exception)
        render json: {"error": exception.message}, status: :not_found
    end
    def bad_request(exception)
        render json: {"error": exception.message}, status: :bad_request
    end
    def general(exception)
      render json: {"error": exception.message}, status: :bad_request
    end
end
