class CategoriesController < ApplicationController
    
    
    before_action :get_category, only: [:show, :edit, :update, :create, :destroy]
    before_action :set_category, only: :new
    before_action :get_categories, only: :index
    # before_action :remove_category_id_form_books, only: :destroy
    
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
            render :edit
        end

    end

    def destroy
        @category.destroy
        flash[:alert] = "category has been deleted!"
        redirect_to categories_path
    end

    private
    def category_params
        params.require(:category).permit(:first_name, :last_name, :image, :birth_date, :death_date, :wiki_page)
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
    
   
    
    
    
end
