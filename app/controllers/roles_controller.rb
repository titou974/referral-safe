class RolesController < ApplicationController

  def create
    @role = Role.new(role_params)
    @role.user = current_user
    @role.save
    redirect_to user_path(User.find(params[:user_id]))
  end

  def update
  end

  def destroy

  end

  private

  def role_params
    params.require(:role).permit(:recruiter, :company_id)
  end
end
