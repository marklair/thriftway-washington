class UsersController < ApplicationController
  
  if User.all.count >= 1
    # Users require another user to register them
    before_filter :require_user
  else
    # First user can add himself
    before_filter :require_user, :except => [:new, :create]
  end
  
  # GET /users
  # GET /users.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    # begin
    #         search_by = Integer(params[:id])
    #         is_perishable_token = nil
    #     rescue ArgumentError
    #         is_perishable_token = true
    #     end
    #     
    #     if is_perishable_token == true
    #       @user = User.find_using_perishable_token(params[:id])
    #       # @user = User.find(1)
    #     else
    #       @user = User.find(params[:id])
    #     end
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @user }
    end
  end
  
  def show_by_perishable_token
    @user = User.find_by_perishable_token(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        flash[:success] = 'Registration successfull.'
        format.html { redirect_to(:users) }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        flash[:success] = 'User was successfully updated.'
        format.html { redirect_to @user }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash[:success] = 'User successfully deleted.'
    else
      flash[:error] = 'Error deleting user.'
    end

    respond_to do |format|
      flash[:success] = 'User successfully deleted.'
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
end
