class SessionsController < ApplicationController

  def hello
  end 

  def new
  end

  def create
    
    user = User.find_or_create_by(email: params[:user][:email], username: params[:user][:username]) do |u|
      u.first_name = params[:user][:first_name],
      u.last_name = params[:user][:last_name],
      u.email = params[:user][:email],
      u.username = params[:user][:username],
      u.password = params[:user][:password],
      u.birth_date = params[:user][:birth_date]
    end
    # byebug
    if user.valid?
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      redirect_to login_path
    end
  end

  def destroy
  end
end
