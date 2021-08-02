class SessionsController < ApplicationController
  def new
  end

  def create
    #if user is nil you can't call .authenticate on him
    # #@user.authenticate(params[:user][:password]) returns false if password is incorect
    ## returns object(@user in this case) if password is correct
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      sign_me_in(@user)
    else
      sign_in_went_wrong
    end
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

    if @user
      sign_me_in(@user)
    else
      sign_in_went_wrong
    end
    
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

  def sign_me_in(user)
    session[:user_id] = @user.id
    flash.notice = "You are logged in as #{@user.full_name}."
    redirect_to "/"
  end

  def  sign_in_went_wrong
    flash[:alert] = "Upps, something went wrong. Please check your credetials."
    redirect_to "/"
  end


end
