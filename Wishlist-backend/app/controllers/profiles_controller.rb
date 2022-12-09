class ProfilesController < ApplicationController
    skip_before_action :authorized, only: [:create, :show, :destroy, :index]
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid
    wrap_parameters format: []

    def index
        render json: Profile.all
    end

    def show 
        current_profile = Profile.find(id: session[:profile_id])
        render json: current_profile
    end

    def create
        profile = Profile.create!(profile_params)
        
        render json: profile, status: :created

    end

    def update
        profile = Profile.find(params[:id])
        profile.update!(update_params)
        render json: profile, status: :accepted
    end

    def destroy 
        profile = Profile.find(params[:id]).destroy
        render json: profile
    end


    private

    def update_params
        params.permit(:password)
    end

    def profile_params 
        params.permit(:name, :username, :password, :image)
    end

    def render_record_invalid(exception)
        render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end

    def record_not_found_response(exception)
     render json: {error: "Profile not found"}, status: :not_found 
 
    end
 
end
