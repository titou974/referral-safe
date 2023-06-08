class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      @users = User.where(available: true).includes(:role).where(roles: { id: nil }).search_by_first_name_and_last_name(params[:query])
    else
      @users = User.where(available: true).includes(:role).where(roles: { id: nil })
    end
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
