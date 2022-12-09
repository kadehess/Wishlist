class GiftsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_response
    def index
        gift = Gift.all
        render json: gift
    end

    def show 
        profile = Profile.find(params[:id])
        render json: profile, serializer: ProfileWithWishlistSerializer 
    end

    private

    def record_not_found_response(exception)
        render json: {error: "Profile not found"}, status: :not_found 
    
       end


end
