class CategoriesController < ApplicationController
    
    
    before_action :get_category, only: [:show, :edit, :update, :create, :destroy]
    before_action :set_category, only: :new
    before_action :get_categories, only: :index
    before_action :get_books, only: :show
    
    
    def index
    end

    def show
    end

    def new
    end

    def create
        @category = Category.new(category_params)
        if @category.save
            redirect_to category_path(@category), notice: "New category Created"
        else
            flash[:alert] = "Category not created."
            render :new
        end
    end

    def edit
    end

    def update
        @category.update(category_params)
        if @category.save
            redirect_to category_path(@category), notice: "The category was successfully updated"
        else
            flash[:alert] = "The category is not updated."
            render :edit
        end

    end

    def destroy
        @category.destroy
        flash[:alert] = "Category has been deleted!"
        redirect_to categories_path
    end

    private
    def category_params
        params.require(:category).permit(:name, :description, :created_by)
    end

    def get_category
        @category = Category.find_by(id: params[:id])
    end

    def set_category
        @category = Category.new
    end

    def get_categories
        @categories = Category.all
    end

    def get_books
        @books = Book.get_books_by_category(@category)
    end
    
end
