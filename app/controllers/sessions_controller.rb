class SessionsController < ApplicationController
  def new
  end

  def create
    # byebug
    @user = User.find_or_create_by(email: params[:user][:email]) do |u|
      u.first_name = params[:user][:first_name],
      u.last_name = params[:user][:last_name],
      u.email = params[:user][:email],
      u.password_digest = params[:user][:password],
      u.birth_date = params[:user][:birth_date]
    end
    # redirect_to "/" and return unless @user.authenticate(params[:user][:password])
    # return head(:forbidden) unless @user.authenticate(params[:user][:password])
    if !@user.authenticate(params[:user][:password])
      flash.notice = "Credentials not valid, please try again."
      redirect_to "/"
      return
    end

    valid_user

  end

  def omniauth #log user with google
    @user = User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
      u.first_name = auth['info']['first_name']
      u.last_name = auth['info']['last_name']
      u.email = auth['info']['email']
      u.password = SecureRandom.hex(10)
      u.uid = auth['uid']
      u.provider = auth['provider']
    end
    
    valid_user
  end

  def destroy
    session.delete :user_id
    flash.notice = "You are sussesfully loged out!"
    redirect_to '/'

  end

  private

  def auth
    request.env['omniauth.auth']
  end
  def valid_user
    if @user.valid?
      session[:user_id] = @user.id
      flash[:notice] = "You are logged in."
      redirect_to user_path(@user)
    else
      flash[:notice] = "Upps, something went wrong. Please check your credetials."
      redirect_to "/"
    end
  end
end
