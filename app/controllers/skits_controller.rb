class SkitsController < ApplicationController
  # GET /skits
  # GET /skits.xml
  def index
    @skits = Skit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  
    end
  end

  # GET /skits/1
  # GET /skits/1.xml
  def show
    @skit = Skit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @skit }
    end
  end

  # GET /skits/new
  # GET /skits/new.xml
  def new
    @skit = Skit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @skit }
    end
  end

  # GET /skits/1/edit
  def edit
    @skit = Skit.find(params[:id])
  end

  # POST /skits
  # POST /skits.xml
  def create
    @skit = Skit.new(params[:skit])

    respond_to do |format|
      if @skit.save
        format.html { redirect_to(@skit, :notice => 'Skit was successfully created.') }
        format.xml  { render :xml => @skit, :status => :created, :location => @skit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @skit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /skits/1
  # PUT /skits/1.xml
  def update
    @skit = Skit.find(params[:id])

    respond_to do |format|
      if @skit.update_attributes(params[:skit])
        format.html { redirect_to(@skit, :notice => 'Skit was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @skit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /skits/1
  # DELETE /skits/1.xml
  def destroy
    @skit = Skit.find(params[:id])
    @skit.destroy

    respond_to do |format|
      format.html { redirect_to(skits_url) }
      format.xml  { head :ok }
    end
  end
end
