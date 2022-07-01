class CreditcardsController < ApplicationController

    def index
        creditcards = Creditcard.all
        render json: creditcards, status: 200
    end

    def show
        creditcard = Creditcard.find_by(id: params[:id])
        render json: creditcard, status: 200
    end

    def destroy
        creditcard = Creditcard.find_by(id: params[:id])
        if creditcard
            creditcard.destroy
            head :no_content
        else
            render json: {errors: ["Credit card not found."]}
        end
    end

    def create
        creditcard = Creditcard.create!(allowed)
        render json: creditcard
    end

    def update
        creditcard = Creditcard.find_by(id: params[:id])
        if creditcard
            creditcard.update(allowed)
            render json: creditcard, status: 200
        else
            render json: {errors: ["Credit card not found."]}
        end
    end

    private

    def allowed
        params.permit(:nameoncard, :number, :expiration, :cvc, user_id, :address_id)
    end

end
