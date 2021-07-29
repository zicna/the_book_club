class SessionsController < ApplicationController

  def hello
  end 

  def new
  end

  def create
    
    @user = User.find_or_create_by(email: params[:user][:email]) do |u|
      u.first_name = params[:user][:first_name],
      u.last_name = params[:user][:last_name],
      u.email = params[:user][:email],
      # u.username = params[:user][:username],
      u.password_digest = params[:user][:password],
      u.birth_date = params[:user][:birth_date]

    # @user = User.find_by(email: params[:email])
    return head(:forbidden) unless @user.authenticate(params[:user][:password])
    end
    # byebug
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to login_path
    end
  end

  def omniauth #log user with google
    # byebug
    user = User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
      u.first_name = auth['info']['first_name']
      u.last_name = auth['info']['last_name']
      u.email = auth['info']['email']
      u.password = SecureRandom.hex(10)
      u.uid = auth['uid']
      u.provider = auth['provider']
    end
    if user.valid?
      flash[:message] = "You are logged in with google"
      redirect_to authors_path
    else
      flash[:message] = user.errors.full_messages.join(", ")
      redirect_to authors_path
    end
  end

  def destroy
  end

  private
  def auth
    request.env['omniauth.auth']
  end
end
