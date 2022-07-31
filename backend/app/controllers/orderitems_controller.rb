class OrderitemsController < ApplicationController
    def create
        orderitem = Orderitem.create(permitted)
   #     orderitem.update ({ price: Item.find_by(id: params[:item_id]).price })
        render json: orderitem, status: :created
    end

    def index
        orderitems = Orderitem.all
        render json: orderitems, status: 200
    end

    private

    def permitted
        params.permit(:item_id, :order_id, :amount)
    end

end
