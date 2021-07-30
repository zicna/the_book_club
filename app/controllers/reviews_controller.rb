class ReviewsController < ApplicationController
   
    before_action :get_review, only: [:show, :edit, :update, :create, :destroy]
    before_action :set_review, only: :new
    # before_action :get_reviews, only: :index
    before_action :get_book, only: :edit
    # before_action :get_reviews_from_nested_route, only: :index
    
    def index
        if nested_route?
            @book = Book.find_by(id: params[:book_id])
            @reviews = @book.reviews
        else
            get_reviews
        end
    end

    def show
    end

    def new
    end

    def create
        # byebug
        @book = Book.find_by(id: params[:review][:book_id])
        @review = Review.new(review_params)
        if @review.save
            redirect_to book_path(@book), notice: "New review Created"
        else
            redirect_to book_path(@book), alert: "Review not created"
        end
    end

    def edit
        # byebug
    end

    def update
        @review.update(review_params)
        if @review.save
            redirect_to book_path(@review.book_id), notice: "The review was successfully updated"
        else
            render :edit
        end

    end

    def destroy
        @review.destroy
        flash[:alert] = "review has been deleted!"
        redirect_to reviews_path
    end

    private
    def review_params
        params.require(:review).permit(:content, :mark, :book_id, :user_id)
    end

    def get_review
        @review = Review.find_by(id: params[:id])
    end

    def set_review
        @review = Review.new
    end

    def get_reviews
        @reviews = Review.all
    end

    def get_book
        @book = Book.find_by(id: @review.book_id)
    end

    def nested_route?
        params[:book_id] ? true : false
    end
    
    # def get_book_from_nested_route
    #     if params[:book_id].present? && @book = Book.find_by(id: params[:book_id])
    #         @book
    #     end
    # end

    # def get_reviews_from_nested_route
    #     @book_reviews = get_book_from_nested_route.reviews
    # end
end
