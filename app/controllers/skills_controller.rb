class SkillsController < ApplicationController

  def index
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
    if @skill.save
      flash[:alert] = "Skill Added"
      redirect_to skill_path(@skill)
    else
      render :new
    end
  end

  def edit
    @skill = Skill.find(params[:id])
    @projects = Project.all
  end

  def update
    @skill = Skill.find(params[:id])
    if @skill.update(skill_params)
      flash[:alert] = "Skill Modified"
      redirect_to skill_path(@skill)
    else
      render :edit
    end
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    redirect_to skills_path
  end

  private def skill_params
    params.require(:skill).permit!
    # See controllers/projects_controller - project_params for details
    # (:name, :description, :project_ids)
  end

end
