class ProfilesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid
    def index
        render json: Profile.all
    end

    def show 
        profile = Profile.find(params[:id])
        render json: profile, serializer: ProfileWithWishlistSerializer 
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
        params.permit(:passcode)
    end

    def profile_params 
        params.permit(:name, :username, :passcode, :image)
    end

    def render_record_invalid(exception)
        render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end

    def record_not_found_response(exception)
     render json: {error: "Profile not found"}, status: :not_found 
 
    end
 
end
