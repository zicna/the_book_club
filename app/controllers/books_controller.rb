class BooksController < ApplicationController
    before_action :get_book, only: [:show, :edit, :update, :create, :destroy]
    before_action :set_book, only: :new
    before_action :get_books, only: :index
    before_action :get_authors, only: :new
    before_action :get_categries, only: :new
    
    def index
    end

    def show
    end

    def new
        @book.build_category
        @book.build_author
    end

    def create
        # byebug
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
        params.require(:book).permit(:author_id, :category_id, :title, :invt, :description, :price, :category_attributes => [:name], :author_attributes => [:first_name, :last_name, :image, :birth_date, :death_date, :wiki_page])
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
end
