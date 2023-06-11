class CompaniesController < ApplicationController
  def create
    @company = Company.new(company_params)
    current_user.company = @company
    @company.save
  end

  def update
  end

  def destroy
  end

  private

  def company_params
    params.require(:company).permit(:name, :sector, :size, :siret, :photo)
  end

end
