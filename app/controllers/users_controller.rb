class UsersController < ApplicationController
  
  def show 
    @user = User.find(params[:id])
    #debugger
  end

  def new
    @user = User.new
  end

  def create 
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
      flash[:success] = "Welcome to the San Francisco Chapter of Health 2.0 "

    else
      render 'new'
    end
  end

  private 

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
