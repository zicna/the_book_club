class AuthorsController < ApplicationController
    
    before_action :get_author, only: [:show, :edit, :update, :create, :destroy]
    before_action :set_author, only: :new
    before_action :get_authors, only: :index
    
    
    def index
    end

    def show
    end

    def new
        
    end

    def create
        @author = Author.new(author_params)
        if @author.save
            redirect_to author_path(@author), notice: "New author Created."
        else
            flash[:alert] = "Author not created."
            render :new
        end
    end

    def edit
    end

    def update
        @author.update(author_params)
        if @author.save
            redirect_to author_path(@author), notice: "The author was successfully updated."
        else
            flash[:alert] = "Author is not updated."
            render :edit
        end

    end

    def destroy
        @author.destroy
        flash[:alert] = "Author has been deleted!"
        redirect_to authors_path
    end

    private
    def author_params
        params.require(:author).permit(:first_name, :last_name, :image, :birth_date, :death_date, :wiki_page)
    end

    def get_author
        @author = Author.find_by(id: params[:id])
    end

    def set_author
        @author = Author.new
    end

    def get_authors
        @authors = Author.all
    end
    
    
end
