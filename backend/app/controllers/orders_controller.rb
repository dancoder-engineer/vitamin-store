class OrdersController < ApplicationController

    def create
        order = Order.create(permitted)
        render json: order, status: :created
    end

    def index
        orders = Order.all
        render json: orders, status: 200
    end

    private

    def permitted
        params.permit(:fulfilled, :fulfilled_by, :user_id, :subtotal, :stax, :grandtotal)
    end

end
