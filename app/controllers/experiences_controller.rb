class ExperiencesController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @experience = Experience.new(experience_params)
    @experience.user = @user
    @experience.end_date = params[:experience][:start_date][14..23]
    params[:experience][:skill_list].each do |skill|
      @experience.skill_list.add(skill)
    end
    if @experience.save
      redirect_to user_path(@user)
    else
      render "users/show", status: :unprocessable_entity
    end
  end

  def update
    @experience = Experience.find(params[:id])
    @experience.certified = true
    if @experience.save && @experience.update(experience_params)
      redirect_to user_path(@experience.user), notice: "Experience certified!"
    else
      render :dashboard, status: :unprocessable_entity
    end
  end

  def certify
    @experience = Experience.find(params[:id])
    @experience.certified = true
    if @experience.save
      redirect_to user_path(@experience.user.id)
    end

  end

  def destroy
  end


  private

  def experience_params
    #ajouter la photo du logo de l'entreprise dans les permits quand ce sera done sur la seed.
    params.require(:experience).permit(:job_name, :job_description, :start_date, :end_date, :company_id, :skill_list, :comment)
  end

end
