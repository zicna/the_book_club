class UsersController < ApplicationController

    before_action :get_user, only: [:show, :edit, :update, :destroy]
    before_action :set_user, only: :new
    before_action :get_users, only: :index
    before_action :books_added_by_current_user, only: :show
    before_action :authors_added_by_current_user, only: :show
    before_action :categories_added_by_current_user, only: :show

    
    def index
        if is_admin?
            render :index
        else
            flash.alert = "Acces denied"
            redirect_to "/"
        end
    end

    def show
        if current_user == @user || is_admin?
            render :show
        else
            flash.alert = "Acces denied"
            redirect_to "/"
        end
    end

    def new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user), notice: "New User Created"
        else
            flash.alert = "Uuups something went wrong."
            render :new
        end
    end

    def edit
    end

    def update
        @user.update(user_params)
        if @user.save
            redirect_to user_path(@user), notice: "The user was successfully updated"
        else
            flash.alert = "Uuups something went wrong."
            render :edit
        end

    end

    def destroy
        @user.destroy
        session.delete :user_id
        flash[:alert] = "User has been deleted!"
        redirect_to '/'
    end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :admin, :birth_date, :uid, :provider)
    end

    def get_user
        @user = User.find_by(id: params[:id])
    end

    def set_user
        @user = User.new
    end

    def get_users
        @users = User.all
    end

    def books_added_by_current_user
        @books = Book.added_by(current_user)
    end

    def categories_added_by_current_user
        @categories = Category.added_by(current_user)
    end

    def authors_added_by_current_user
        @authors = Author.added_by(current_user)
    end

    # def get_books_added_by(user)
    #     Book.added_by(user)
    # end
end
