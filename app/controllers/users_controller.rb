class UsersController < ApplicationController
  before_action :find_user, except: [:index, :create]

  def index
    @users = User.all
  end

  def create
    @user = User.create(user_params)
  end

  def update
    if @user.update_attributes(user_params)
      flash[:notice] = 'User was successfully updated'
      redirect_to user_path
    else
      flash[:alert] = 'Please check user params'
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :photo)
  end

  def find_user
    @user = User.find(params[:id])
  end
end