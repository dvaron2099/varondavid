class ProjectsController < ApplicationController

  def index
    @technologies = Technology.all
    @projects = Project.all
    @users = User.all
  end

  def show
    @project = Project.find(params[:id])
    @technologies = @project.technologies
  end

  def index_en
    @technologies = Technology.all
    @projects = Project.all
    @users = User.all
  end

  def show_en
    @project = Project.find(params[:id])
    @technologies = @project.technologies
  end
end
