class ClassTypesController < ApplicationController
  # GET /class_types
  # GET /class_types.json
  def index
    @class_types = ClassType.order("name")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @class_types }
    end
  end

  # GET /class_types/1
  # GET /class_types/1.json
  def show
    @class_type = ClassType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @class_type }
    end
  end

  # GET /class_types/new
  # GET /class_types/new.json
  def new
    @class_type = ClassType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @class_type }
    end
  end

  # GET /class_types/1/edit
  def edit
    @class_type = ClassType.find(params[:id])
  end

  # POST /class_types
  # POST /class_types.json
  def create
    @class_type = ClassType.new(params[:class_type])

    respond_to do |format|
      if @class_type.save
        format.html { redirect_to @class_type, notice: 'Class type was successfully created.' }
        format.json { render json: @class_type, status: :created, location: @class_type }
      else
        format.html { render action: "new" }
        format.json { render json: @class_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /class_types/1
  # PUT /class_types/1.json
  def update
    @class_type = ClassType.find(params[:id])

    respond_to do |format|
      if @class_type.update_attributes(params[:class_type])
        format.html { redirect_to @class_type, notice: 'Class type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @class_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_types/1
  # DELETE /class_types/1.json
  def destroy
    @class_type = ClassType.find(params[:id])
    @class_type.destroy

    respond_to do |format|
      format.html { redirect_to class_types_url }
      format.json { head :no_content }
    end
  end
end
