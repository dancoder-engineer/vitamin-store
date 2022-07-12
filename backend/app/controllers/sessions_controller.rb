class SessionsController < ApplicationController

  

  #  skip_before_action :verify_authenticity_token

    def getme
       # session.delete :user_id
       # session[:user_id] ||= 0
        

        user=User.find_by(id: session[:user_id])
       # session[:user_id] = 1
        return render json: session
          
        
    end

    def extra
#        session[:user_id] = 1
        return render json: session
    end


    def login
       # session.delete :user_id
    #   protect_from_forgery
      #  session[:user_id] ||= 0


        if session[:user_id] && session[:user_id] != 0
            return render json: session
        end
        
    

        user=User.find_by(username: params[:username])

        if user&.authenticate(params[:password])
            session[:user_id] |= user.id
            render json: user
        else
            render json: {errors: "Username or Password Wrong"}
        end
    end

end