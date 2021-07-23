class BooksController < ApplicationController
    before_action :get_book, only: [:show, :edit, :update, :create, :destroy]
    before_action :set_book, only: :new
    before_action :get_books, only: :index
    
    def index
    end

    def show
    end

    def new
    end

    def create
        @book = Book.new(book_params)
        if @book.save
            redirect_to book_path(@book), notice: "New book Created"
        else
            render :new
        end
    end

    def edit
    end

    def update
        @book.update(book_params)
        if @book.save
            redirect_to book_path(@book), notice: "The book was successfully updated"
        else
            render :edit
        end

    end

    def destroy
        @book.destroy
        flash[:alert] = "book has been deleted!"
        redirect_to books_path
    end

    private
    def book_params
        params.require(:book).permit(:author_id, :category_id, :title, :invt, :description, :price)
    end

    def get_book
        @book = book.find_by(id: params[:id])
    end

    def set_book
        @book = book.new
    end

    def get_books
        @books = book.all
    end
end
