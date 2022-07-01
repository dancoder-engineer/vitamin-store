class ItemsController < ApplicationController

    def index
        items = Item.all
        render json: items, status: 200
    end

    def show
        item = Item.find_by(id: params[:id])
        render json: item, status: 200
    end

    def create
        item = Item.create!(allowed)
        render json: item, status: :created
    end

    def update
        item = Item.find_by(id: params[:id])
        if item
            item.update(permitted)
            render json: item, status: 200
        else
            render json: {errors: ["Item not found"]}, status: 404
        end
    end

    def destroy
        item = item.find_by(id: params[:id])
        if item
            item.destroy
            head :no_content
        else
            render json: {errors: ["Item not found"]}, status: 404
        end        
    end

    private

    def allowed
        params.permit(:name, :brand, :dose, :pillamount, :price, :pilltype, :blurb, :picurl)
    end




end
