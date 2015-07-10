class SkillsController < ApplicationController

  def index
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def new
    if is_admin?
      @skill = Skill.new
    else
      flash[:alert] = "You must be an administrator to access these functions"
      redirect_to :back
    end
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
    if is_admin?
      @skill = Skill.find(params[:id])
      @projects = Project.all
    else
      flash[:alert] = "You must be an administrator to access these functions"
      redirect_to :back
    end
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
