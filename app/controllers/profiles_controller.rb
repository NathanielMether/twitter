class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  def index
    @profiles = Profile.all
  end

  def new 
    @profile = Profile.new
  end

  def show
  end

  def create
    @profile = Profile.new(profile_params)
    # creating an empty instance and fill it with details
    @profile.user = current_user

    # sending back a response from the person who used the form
    respond_to do |format|
      # save profile
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created'}
      else
        format.html { render :new}
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      # save profile
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated'}
      else
        format.html { render :edit}
      end
    end
  end

  def destroy
    respond_to do |format|
      if @profile.destroy
        format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed'}
      end
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:avatar, :first_name, :last_name, :country)
  end

  def set_profile
    @profile = Profile.find(params[:id])
  end
end