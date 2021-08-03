class ReviewsController < ApplicationController
   
    before_action :get_review, only: [:show, :edit, :update, :create, :destroy]
    before_action :set_review, only: :new
    before_action :get_book, only: [:edit, :update]

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
        @book = Book.find_by(id: params[:review][:book_id])
        @review = Review.new(review_params)
        if @review.save
            redirect_to book_path(@book), notice: "New review Created"
        else
            redirect_to book_path(@book), alert: "Review not created"
        end
    end

    def edit
        
    end

    def update
        @review.update(review_params)
        if @review.save
            redirect_to book_path(@review.book_id), notice: "The review was successfully updated"
        else
            flash[:alert] = "The review is not updated."
            render :edit
        end

    end

    def destroy
        if nested_route?
            book = Book.find_by(id: params[:book_id])
            @review.destroy
            flash[:alert] = "review for #{book.title} book has been deleted!"
            redirect_to book_reviews_path(book)
        else
            @review.destroy
            flash[:alert] = "review for #{@book.title} has been deleted!"
            redirect_to reviews_path
        end
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
