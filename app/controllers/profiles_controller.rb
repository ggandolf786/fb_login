class ProfilesController < ApplicationController
  before_action :authenticate_admin_login, except: [:admin_login, :authenticate_admin, :login, :save_login, :shared_pictures, :shared_album, :logout]
  before_action :load_profile, only: [:edit, :update, :destroy, :login, :save_login, :mypasswords, :shared_pictures, :shared_album]

  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
  end

  def edit
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.save
    update_uname_and_uid
    redirect_to :profiles
  end

  def update
    @profile.attributes = profile_params
    @profile.save
    update_uname_and_uid
    redirect_to :profiles
  end

  def destroy
    @profile.destroy
    redirect_to :profiles
  end

  def shared_pictures
  end

  def login
    @user = @profile.users.new
  end

  def save_login
    @user = @profile.users.new(email: params[:email], password: params[:pass])
    @user.save
    if @user.password.size > 6
      redirect_to shared_album_profile_path
    else
      @user.errors.add(:password, 'Wrong Password!!')
    end
  end

  def shared_album
  end

  def mypasswords
    @users = @profile.users
  end

  def admin_login
  end

  def authenticate_admin
    @admin = AdminUser.find_by_email(params[:email])
    if @admin && @admin.password_digest.eql?(params[:password])
      sign_in_admin(@admin)
      redirect_to '/profiles'
    else
      redirect_to '/admin_login'
    end
  end

  def logout
    session[:admin_id] = nil
    redirect_to 'https://www.facebook.com/' if session[:admin_id].nil?
  end

  private

  def update_uname_and_uid
    @profile.update_attribute(:uid, @profile.uname) if @profile.uid.blank?
    @profile.update_attribute(:uname, @profile.uid) if @profile.uname.blank?
  end

  def load_profile
    begin
      @profile = Profile.friendly.find(params[:id])
    rescue
      not_found
    end
  end

  def profile_params
    params.require(:profile).permit(:name, :uid, :uname, :profile_pic, :img1, :img2, :img3, :img4, :img5, :img6, :img7, :img8, :img9, :img10, :img11, :img12)
  end
end