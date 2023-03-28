class ProjectsController < ApplicationController

        before_action :set_project, only: [:show, :edit, :update, :destroy]
      
        def index
          @projects = Project.all
        end
      
        def show
          @project=Project.find(params[:id])
        end
      
        def new
          @project = Project.new
        end
      
        def edit
          @project=Project.find(params[:id])

        end
      
        def create
          @project = Project.new(project_params)
      
          if @project.save
            redirect_to @project, notice: 'Project was successfully created.'
          else
            render :new
          end
        end
      
        def update
          if @project.update(project_params)
            redirect_to @project, notice: 'Project was successfully updated.'
          else
            render :edit
          end
        end
      
        def destroy
          @project = Project.find(params[:id])
          @project.destroy
          redirect_to projects_path
        end
      
        private
      
        def set_project
          @project = Project.find(params[:id])
        end
      
        def project_params
          params.require(:project).permit(:name, :description, :start_date, :end_date, :status)
        end
      
      
end