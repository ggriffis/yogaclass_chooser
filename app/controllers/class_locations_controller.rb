class ClassLocationsController < ApplicationController
  # GET /class_locations
  # GET /class_locations.json
  def index
    @class_locations = ClassLocation.order("place")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @class_locations }
    end
  end

  # GET /class_locations/1
  # GET /class_locations/1.json
  def show
    @class_location = ClassLocation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @class_location }
    end
  end

  # GET /class_locations/new
  # GET /class_locations/new.json
  def new
    @class_location = ClassLocation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @class_location }
    end
  end

  # GET /class_locations/1/edit
  def edit
    @class_location = ClassLocation.find(params[:id])
  end

  # POST /class_locations
  # POST /class_locations.json
  def create
    @class_location = ClassLocation.new(params[:class_location])

    respond_to do |format|
      if @class_location.save
        format.html { redirect_to @class_location, notice: 'Class location was successfully created.' }
        format.json { render json: @class_location, status: :created, location: @class_location }
      else
        format.html { render action: "new" }
        format.json { render json: @class_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /class_locations/1
  # PUT /class_locations/1.json
  def update
    @class_location = ClassLocation.find(params[:id])

    respond_to do |format|
      if @class_location.update_attributes(params[:class_location])
        format.html { redirect_to @class_location, notice: 'Class location was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @class_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_locations/1
  # DELETE /class_locations/1.json
  def destroy
    @class_location = ClassLocation.find(params[:id])
    @class_location.destroy

    respond_to do |format|
      format.html { redirect_to class_locations_url }
      format.json { head :no_content }
    end
  end
end
