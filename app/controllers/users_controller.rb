class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def index
    @role = Role.new
    @company = Company.new
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
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :show, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find(params[:id])
    @experience = Experience.new
    @experience.user = @user
  end

  private


  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name, :available, :address, :photo)
  end

end
