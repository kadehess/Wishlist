class ApplicationController < ActionController::API
    include ActionController::Cookies 
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    before_action :authorized
    def authorized
        @current_profile = Profile.find_by(id: session[:profile_id])

        render json: { errors: ["Not authorized"] }, status: :unauthorized unless @current_profile
    end

    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
      end
end
