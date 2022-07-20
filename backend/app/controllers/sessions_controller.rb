class SessionsController < ApplicationController

  def updateCart
    whichItem=params[:id]
    howMany=params[:amount]
    session[:cart][whichItem] = howMany
    render json: session
  end

  def createCart
    whichItem = params[:id]
    session[:cart] ||= {}
    session[:cart][whichItem] ||= 0
    render json: session
  end

  #  skip_before_action :verify_authenticity_token

  def newUser
    user = User.create(allowed)
    session[:user_id] = user.id
    render json: user, status: :created
  end

    def getme
       # session.delete :user_id
    # session[:user_id] ||= 0
        
        user=User.find_by(id: session[:user_id])
        return render json: user
          
        
    end

    def extra
        session[:test] = [1, 2, 3, 4, 5]
        session[:test2] = ["a", "b", "c", "d", "e"]
        return render json: session
    end


    def login
       # session.delete :user_id
    #   protect_from_forgery
      #  session[:user_id] ||= 0


        if session[:user_id] && session[:user_id] != 0
         #   return render json: session
        end
        
    

        user=User.find_by(username: params[:username])

        if user&.authenticate(params[:password])
            session[:user_id] = user.id
        end
            render json: user
      end

    
    def logout
      if session[:user_id]
        session.delete :user_id
        render json:{log: "Logged out"}
      else
        render json:{log:"Not logged in"}
      end
    end

    private

    def allowed
        params.permit(:username, :password, :password_confirmation, :firstname, :lastname, :kind)
    end

end

