class UsersController < ApplicationController

    def index
        users = User.all
        render json: users, status: 200
    end

    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user, status: 200
        else
            render json: {errors: ["User not found."]}, status: 404
        end
    end

    def create
        user = User.create(allowed)
        render json: user, status: :created
    end

    def update
        user = User.find_by(id: params[:id])
        if user
            user.update(allowed)
            render json: user, status: 200
        else
            render json: {errors: ["User not found."]}, status: 404
        end
    end


    private
    
    def allowed
        params.permit(:firstname, :lastname, :username, :password, :password_confirmation, :kind)
    end

end
