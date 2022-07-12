class ApplicationController < ActionController::API

    include ActionController::Cookies

    
    def login
        # session.delete :user_id
     #   protect_from_forgery
       #  session[:user_id] ||= 0
 
         if session[:user_id] && session[:user_id] != 0
             return render json: session
         end
         
     
 
         user=User.find_by(username: params[:username])
 
         if user&.authenticate(params[:password])
             session[:user_id] = user.id
             render json: user
         else
             render json: {errors: "Username or Password Wrong"}
         end
     end





end
