class ClassSchedulesController < ApplicationController
  # GET /class_schedules
  # GET /class_schedules.xml
  def index
    @class_schedules = ClassSchedule.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @class_schedules }
    end
  end

  # GET /class_schedules/1
  # GET /class_schedules/1.xml
  def show
    @class_schedule = ClassSchedule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @class_schedule }
    end
  end

  # GET /class_schedules/new
  # GET /class_schedules/new.xml
  def new
    @class_schedule = ClassSchedule.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @class_schedule }
    end
  end

  # GET /class_schedules/1/edit
  def edit
    @class_schedule = ClassSchedule.find(params[:id])
  end

  # POST /class_schedules
  # POST /class_schedules.xml
  def create
    @class_schedule = ClassSchedule.new(params[:class_schedule])

    respond_to do |format|
      if @class_schedule.save
        flash[:notice] = 'ClassSchedule was successfully created.'
        format.html { redirect_to(@class_schedule) }
        format.xml  { render :xml => @class_schedule, :status => :created, :location => @class_schedule }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @class_schedule.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /class_schedules/1
  # PUT /class_schedules/1.xml
  def update
    @class_schedule = ClassSchedule.find(params[:id])

    respond_to do |format|
      if @class_schedule.update_attributes(params[:class_schedule])
        flash[:notice] = 'ClassSchedule was successfully updated.'
        format.html { redirect_to(@class_schedule) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @class_schedule.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /class_schedules/1
  # DELETE /class_schedules/1.xml
  def destroy
    @class_schedule = ClassSchedule.find(params[:id])
    @class_schedule.destroy

    respond_to do |format|
      format.html { redirect_to(class_schedules_url) }
      format.xml  { head :ok }
    end
  end
end
