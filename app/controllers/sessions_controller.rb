class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      login_url @user
      redirect_to user_url @user
    else
      flash.now[:danger] = 'Invalid credentials'
      render 'new'
    end
  end
end
