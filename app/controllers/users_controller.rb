class UsersController < ApplicationController

    before_action :get_user, only: [:show, :edit, :create, :destroy]
    before_action :set_user, only: :new
    before_action :get_users, only: :index
    
    def index
    end

    def show
    end

    def new
    end

    def create
        # byebug
        @user = User.new(user_params)
        if @user.save
            redirect_to user_path(@user), notice: "New User Created"
        else
            render :new
        end
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :username, :admin, :birth_date)
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
end
