class ClassLocationsController < ApplicationController
  # GET /class_locations
  # GET /class_locations.xml
  def index
    @class_locations = ClassLocation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @class_locations }
    end
  end

  # GET /class_locations/1
  # GET /class_locations/1.xml
  def show
    @class_location = ClassLocation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @class_location }
    end
  end

  # GET /class_locations/new
  # GET /class_locations/new.xml
  def new
    @class_location = ClassLocation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @class_location }
    end
  end

  # GET /class_locations/1/edit
  def edit
    @class_location = ClassLocation.find(params[:id])
  end

  # POST /class_locations
  # POST /class_locations.xml
  def create
    @class_location = ClassLocation.new(params[:class_location])

    respond_to do |format|
      if @class_location.save
        flash[:notice] = 'ClassLocation was successfully created.'
        format.html { redirect_to(@class_location) }
        format.xml  { render :xml => @class_location, :status => :created, :location => @class_location }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @class_location.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /class_locations/1
  # PUT /class_locations/1.xml
  def update
    @class_location = ClassLocation.find(params[:id])

    respond_to do |format|
      if @class_location.update_attributes(params[:class_location])
        flash[:notice] = 'ClassLocation was successfully updated.'
        format.html { redirect_to(@class_location) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @class_location.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /class_locations/1
  # DELETE /class_locations/1.xml
  def destroy
    @class_location = ClassLocation.find(params[:id])
    @class_location.destroy

    respond_to do |format|
      format.html { redirect_to(class_locations_url) }
      format.xml  { head :ok }
    end
  end
end
