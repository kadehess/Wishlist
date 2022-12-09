class SessionsController < ApplicationController
    skip_before_action :authorized
    def create
        
        profile = Profile.find_by(username: params[:username])
        if profile&.authenticate(params[:password])
            session[:profile_id] = profile.id
            cookies[:hello] = "does it work?"
            
            render json: profile
        else
            render json: {error: {login: "Invalid username or password"}}, status: :unauthorized
        end
        
    end

    def destroy 
       
        session.delete :profile_id
        
        head :no_content
    end
end