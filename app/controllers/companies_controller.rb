class CompaniesController < ApplicationController
  def create
    @company = Company.new(company_params)
    current_user.company = @company
    
    unless @company.save
      render status: :unprocessable_entity
    end
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
