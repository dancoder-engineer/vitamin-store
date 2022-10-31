class SessionsController < ApplicationController

  def getCart
    if session[:cart]
       render json: session[:cart]
    else
      render json: {[]}
    end
  end

  def updateCart
    whichItem=params[:id]
    howMany=params[:amount].to_i
    session[:cart][whichItem] ||= 0
    oldAmt = session[:cart][whichItem]
    
    item = Item.find_by(id: whichItem)
    
    if (item[:stock] + oldAmt - howMany) < 0
      session[:cart][whichItem] = oldAmt
      return render json: {error: "Not enough stock.", old: oldAmt}
    else
      session[:cart][whichItem] = howMany
      newStock = item[:stock] + oldAmt - howMany
      item.update({stock: newStock })
      session[:cart] = session[:cart].select{ |a, v| v > 0}
      return render json: session[:cart]
    end
  end

  def createCart
    session[:cart] ||= {}
    render json: session
  end

  #  skip_before_action :verify_authenticity_token

  def newUser
    user = User.create!(allowed)
 # rescue ActiveRecord:RecordInvalid => errors
  # return render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
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
        session.delete :user_id
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

    def emptyCart
      session.delete :cart
      session[:cart] ||= {}
      render json:session[:cart]
    end

    private

    def allowed
        params.permit(:username, :password, :password_confirmation, :firstname, :lastname, :kind)
    end

end

