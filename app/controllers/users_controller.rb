require 'pry'

class UsersController < ApplicationController
  before_action :authenticate_user, only: [:show, :edit, :update, :destroy]

  # def index
  #   @users = User.all
  #   if params[:search]
  #     @user = User.search(params[:search])
  #     return redirect_to user_path(@user.ids[0])
  #   else !params[:search]
  #     flash[:notice] = "User was not found"
  #     redirect_to '/'
  #   end
  # end

  def index
    @users = User.search(params[:search])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
      redirect_to '/'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def following
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.following
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @users = @user.followers
    render 'show_follow'
  end

  private

  def authenticate_user
    if !session[:user_id]
      redirect_to '/'
    end
  end

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :password
    )
  end
end
