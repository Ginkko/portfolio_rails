class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:alert] = "Project Added"
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
    @skills = Skill.all
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      flash[:alert] = "Project Modified"
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  private def project_params
    params.require(:project).permit!
    # Need to figure out how to accept :skill_ids as an array without global permit! hack
    # (:name, :github_link, :live_link, :skill_ids) --- not working, Error : skill_ids not permitted
  end

end
