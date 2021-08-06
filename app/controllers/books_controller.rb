class BooksController < ApplicationController
    before_action :get_book, only: [:show, :edit, :update, :create, :destroy]
    before_action :set_book, only: :new
    before_action :get_books, only: :index
    before_action :get_authors, only: [:new, :edit]
    before_action :get_categries, only: [:new, :edit]
    before_action :get_book_reviews, only: :show
    before_action :set_review, only: :show
    
    
    def index
    end

    def show
    end

    def new
        @book.build_category
        @book.build_author
    end

    def create
        @book = Book.new(book_params)
        if @book.save
            redirect_to book_path(@book), notice: "New book Created"
        else
            flash[:alert] = "Book not Created"
            # byebug
            render :new
        end
    end

    def edit
        # byebug
        @book.build_category
        @book.build_author
    end

    def update
        @book.update(book_params)
        if @book.save
            redirect_to book_path(@book), notice: "The book was successfully updated"
        else
            flash[:alert] = "Book is not updated."
            render :edit
        end

    end

    def destroy
        @book.destroy
        flash[:alert] = "Book: '#{@book.title}' has been deleted!"
        redirect_to books_path
    end

    private
    def book_params
        params.require(:book).permit(:author_id, :category_id, :title, :invt, :description, :price, :wiki_page, :category_attributes => [:name], :author_attributes => [:first_name, :last_name, :image, :birth_date, :death_date, :wiki_page])
    end

    def get_book
        @book = Book.find_by(id: params[:id])
    end

    def set_book
        @book = Book.new
    end

    def get_books
        @books = Book.all
    end
    def get_authors
        @authors = Author.all
    end

    def get_categries
        @categories = Category.all
    end

    def set_review
        @review = Review.new(book_id: @book.id, user_id: current_user.id)
    end
    
    def get_book_reviews
        @reviews = @book.reviews
    end
end
