class ProfilesController < ApplicationController
	
  def index
	end

  def show
    profile = Profile.find(params[:id])
  end

  def new
    @profile = Profile.new 
  end

  def create
    # profile = Profile.new(user: current_user)

    profile = Profile.new
    profile.user = current_user
    profile.save

    #@user = current_user
    #@user.profile.create (params[:user_id])
    #redirect_to user.profile
  end

end