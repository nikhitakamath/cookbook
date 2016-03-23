class ProfilesController < ApplicationController

  respond_to :html

  def index
	end

  def show
    @profile = Profile.find(params[:id])
    respond_with(@profile)
  end

  def new
    @profile = Profile.new 
  end

  def create
    # profile = Profile.new(user: current_user)
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    @profile.save
    #@user = current_user
    #@user.profile.create (params[:user_id])
    #redirect_to user.profile
  end


private

  def profile_params
    params.require(:profile).permit(
      :name,
      :start_date, 
      :team_captain, 
      :address, 
      :working_status, 
      :vip_status, 
      :title, 
      :lyft, 
      :pam, 
      :endzone
      )
  end

end