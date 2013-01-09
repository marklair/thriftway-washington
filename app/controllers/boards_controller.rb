class BoardsController < ApplicationController
  
  # what index would normally be
  def list
    @boards = Board.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @boards }
    end
  end
  
  # GET /boards
  # GET /boards.json
  def index
    # @boards = Board.find(:all, :order => 'position')
    @boards = Board.find(:all, :include => :projects, :order => 'position, projects.user_id DESC, projects.priority ASC')
    # users = User.find(:all, 
    #       :include => [:dongles, :licences], 
    #       :order => "licences.created_at DESC, dongles.created_at DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @boards }
    end
  end

  # GET /boards/1
  # GET /boards/1.json
  def show
    @board = Board.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @board }
    end
  end

  # GET /boards/new
  # GET /boards/new.json
  def new
    @board = Board.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @board }
    end
  end

  # GET /boards/1/edit
  def edit
    @board = Board.find(params[:id])
  end

  # POST /boards
  # POST /boards.json
  def create
    @board = Board.new(params[:board])

    respond_to do |format|
      if @board.save
        flash[:success] = 'Your board was successfully created!'
        format.html { redirect_to @board }
        format.json { render :json => @board, :status => :created, :location => @board }
      else
        format.html { render :action => "new" }
        format.json { render :json => @board.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boards/1
  # PUT /boards/1.json
  def update
    @board = Board.find(params[:id])

    respond_to do |format|
      if @board.update_attributes(params[:board])
        flash[:success] = 'Your board was successfully updated!'
        format.html { redirect_to @board }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @board.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boards/1
  # DELETE /boards/1.json
  def destroy
    @board = Board.find(params[:id])
    @board.destroy

    respond_to do |format|
      format.html { redirect_to boards_url }
      format.json { head :ok }
    end
  end
  
  def projects
    @projects = Project.find(:all, :order => 'name, priority')
    @board = Board.find(params[:id])
  end
  
  def add_project
    @projects = Project.find(:all, :order => 'name, priority')
    @project = Project.find(params[:project_id])
    @board = Board.find(params[:id])
    @board.projects << @project
    render :action => "projects"
  end
  
  
end
