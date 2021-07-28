class UsersController < ApplicationController

    before_action :get_user, only: [:show, :edit, :update, :create, :destroy]
    before_action :set_user, only: :new
    before_action :get_users, only: :index
    
    def index
    end

    def show
        redirect_to users_path unless @user
    end

    def new
    end

    def create
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
        @user.update(user_params)
        if @user.save
            redirect_to user_path(@user), notice: "The user was successfully updated"
        else
            render :edit
        end

    end

    def destroy
        @user.destroy
        flash[:alert] = "User has been deleted!"
        redirect_to users_path
    end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :admin, :birth_date)
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
