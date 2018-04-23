class ProfilesController < ApplicationController

  def index
  end
  
  def new
    @profile = Profile.new
    print params
  end
  
  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = params[:user_id]
    if @profile.save
      flash[:info] = "Profile saved."
      redirect_to user_profile_path(@profile.user_id, @profile.id)
    else
      render 'new'
    end
  end
  
  def show
    @profile = Profile.find(params[:id])
  end
  
  private
  
  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :email, :title, :profession, :industry, :company_name)
  end
end
