class ReviewsController < ApplicationController

    before_action :authorize, only: [:create, :update]

    def index
        reviews = Review.all
        render json: reviews, status: 200
    end

    def show
        review = Review.find_by(id: params[:id])
        if review
            render json: review, status: 200
        else
            render json: {errors: ["Review not found."]}
        end
    end

    def create
        review = Review.create(allowed)
        render json: review, status: :created
    end

    def update
        review = Review.find_by(id: params[:id])
        if review
            review.update(allowed)
            render json: review, status: 200
        else
            render json: {errors: ["Review not found."]}
        end
    end

        def destroy
            review = Review.find_by(id: params[:id])
            if review
                review.destroy
                head :no_content
            else
                render json: {errors: ["Review not found."]}
            end
        end

        def byuseritem
            reviews = Review.where(user_id: params[:user], item_id: params[:item])
            render json: reviews, status: 200
        end

        def byuser
            reviews = Review.where(user_id: params[:id])
            render json: reviews, status: 200
        end

        def byitem
            reviews = Review.where(item_id: params[:id])
            render json: reviews, status: 200
        end

    private

    def allowed
        params.permit(:title, :reviewtext, :stars, :user_id, :item_id)
    end
end
