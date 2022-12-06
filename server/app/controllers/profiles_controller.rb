class ProfilesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_response
    def show 
        profile = Profile.find(params[:id])
        render json: profile, serializer: ProfileWithWishlistSerializer 
    end

    def destroy 
        Profile.find(params[:id]).destroy
        head :no_content
    end


    private

    def record_not_found_response(exception)
     render json: {error: "Profile not found"}, status: :not_found 
 
    end
 
end
