class ProjectsController < ApplicationController
  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @projects }
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @project }
    end
  end

  # GET /projects/new
  # GET /projects/new.json
  def new
    @project = Project.new
    @boards = Board.all
    @users = User.all
    @departments = Department.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @project }
    end
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
    @boards = Board.all
    @users = User.all
    @departments = Department.all
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(params[:project])
    @boards = Board.all
    @users = User.all
    @departments = Department.all

    if @project.hours_estimate == ''
      @project.hours_estimate = 0
    end
    respond_to do |format|
      if @project.save
        @project = Project.new
        flash[:success] = 'Project was successfully created.'
        format.html { render :action => "new" }
        format.json { render :json => @project, :status => :created, :location => @project }
      else
        format.html { render :action => "new" }
        format.json { render :json => @project.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /projects/1
  # PUT /projects/1.json
  def update
    @project = Project.find(params[:id])
    @boards = Board.all
    @users = User.all
    @departments = Department.all
    respond_to do |format|
      if @project.update_attributes(params[:project])
        flash[:success] = 'Project was successfully updated.'
        format.html { redirect_to boards_url }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @project.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      flash[:success] = 'Project was successfully DESTROYED!'
      format.html { redirect_to boards_url }
      format.json { head :ok }
    end
  end
end
