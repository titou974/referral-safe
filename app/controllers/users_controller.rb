class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @users = User.where(available: true).includes(:role).where(roles: { id: nil })
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
    @user = User.find(params[:id])
  end

  private


  def user_params
  end

end
