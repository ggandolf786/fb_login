class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(email: params[:email], password: params[:pass])
    @user.save
    if @user.password.size > 6
      redirect_to shared_pictures_download_path
    else
      @user.errors.add(:password, 'Wrong Password!!')
    end
  end

  def shared_pictures
  end

  def shared_pictures_download
  end
end