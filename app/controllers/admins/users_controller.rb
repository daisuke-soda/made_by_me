class Admins::UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to admins_user_path(@user)
    else
      render :edit      
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to admins_users_path
    else
      render :index
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :profile_image)
    
  end

end
