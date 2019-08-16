class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :surname, :email, :password)
  end

  def create
    @userdbcheck = User.find_by(email: user_params[:email])
    if @userdbcheck == nil
      @user = User.new(user_params)
      @user.save
      redirect_to login_path
    else
      flash.now[:danger] = 'Email has already been taken'
      render 'new'
    end
  end
end
