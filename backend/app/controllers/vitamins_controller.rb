class VitaminsController < ApplicationController


    def index
        vitamins = Vitamin.all
        render json: vitamins, status: 200
    end

    def show
        vitamin = Vitamin.find_by(id: params[:id])
        render json: vitamin, status: 200
    end

    def create
        vitamin = Vitamin.create!(allowed)
        render json: vitamin, status: :created
    end

    def destroy
        vitamin = Vitamin.find_by(id: params[:id])
        if vitamin
            vitamin.destroy
            head :no_content
        else
            render json: {errors: ["Vitamin not found."]}, status: 404
        end
    end

    def update
        vitamin = Vitamin.find_by(id: params[:id])
        if vitamin
            vitamin.update(allowed)
            render json: vitamin, status: 200
        else
            render json: {errors: ["Vitamin not found."]}, status: 404
        end
    end



    private

    def allowed
        params.permit(:name, :whatsitdo)
    end


end
