class ProfilesController < ApplicationController
	
  def index
	end

  def show
    @profile = Profile.find(params[:id])
  end

  def new
    @profile = Profile.new 
  end

  def create
    binding.pry
    @user = current_user
    @user.profile.create (params[:user_id])
    redirect_to user.profile
  end

end