class HomesController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource :except=> 'index'
   
  # GET /homes
  # GET /homes.xml
  def index
     #@homes = Home.all
     
    if current_user.role
      if current_user.role.name=='admin'
        redirect_to(:controller => "admin_people",:action => "index")
      elsif current_user.role.name=='deve'
        redirect_to(:controller => "developers",:action =>"index")
      elsif current_user.role.name=='teacher'
        redirect_to(:controller => "teacher_details",:action => "index")
      elsif current_user.role.name=='student'
        redirect_to(:controller => "student_lesson_page",:action => "index")  
      end  
      return
    else
    flash[:notice]="Role not Assigned"
    #redirect_to(:controller => "homes",:action => "index")  
    
    end 
   
    
     respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @homes }
    end
    
  end

  # GET /homes/1
  # GET /homes/1.xml
  def show
    #@home = Home.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @home }
    end
  end

  # GET /homes/new
  # GET /homes/new.xml
  def new
    #@home = Home.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @home }
    end
  end

  # GET /homes/1/edit
  def edit
   # @home = Home.find(params[:id])
  end

  # POST /homes
  # POST /homes.xml
  def create
    #@home = Home.new(params[:home])

    respond_to do |format|
      if @home.save
        format.html { redirect_to(@home, :notice => 'Home was successfully created.') }
        format.xml  { render :xml => @home, :status => :created, :location => @home }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @home.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /homes/1
  # PUT /homes/1.xml
  def update
    #@home = Home.find(params[:id])

    respond_to do |format|
      if @home.update_attributes(params[:home])
        format.html { redirect_to(@home, :notice => 'Home was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @home.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /homes/1
  # DELETE /homes/1.xml
  def destroy
    #@home = Home.find(params[:id])
    @home.destroy

    respond_to do |format|
      format.html { redirect_to(homes_url) }
      format.xml  { head :ok }
    end
  end
end
