class RegistrationsController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome"
      redirect_to root_path
    else
      render 'new'
    end
  end
  private
    def user_params
      # strong parameters
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
