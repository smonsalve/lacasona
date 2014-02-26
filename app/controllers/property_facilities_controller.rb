class PropertyFacilitiesController < ApplicationController
  # GET /property_facilities
  # GET /property_facilities.json
  def index
    @property_facilities = PropertyFacility.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @property_facilities }
    end
  end

  # GET /property_facilities/1
  # GET /property_facilities/1.json
  def show
    @property_facility = PropertyFacility.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @property_facility }
    end
  end

  # GET /property_facilities/new
  # GET /property_facilities/new.json
  def new
    @property_facility = PropertyFacility.new
    @property_facility.property_id = params[:property_id]
    respond_to do |format|
      format.html # new.html.erb
      format.js
      format.json { render json: @property_facility }
    end
  end

  # GET /property_facilities/1/edit
  def edit
    @property_facility = PropertyFacility.find(params[:id])
  end

  # POST /property_facilities
  # POST /property_facilities.json
  def create
    @property_facility = PropertyFacility.new(params[:property_facility])

    respond_to do |format|
      if @property_facility.save
        format.html { redirect_to @property_facility, notice: 'Property facility was successfully created.' }
        format.js
        format.json { render json: @property_facility, status: :created, location: @property_facility }
      else
        format.html { render action: "new" }
        format.json { render json: @property_facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /property_facilities/1
  # PUT /property_facilities/1.json
  def update
    @property_facility = PropertyFacility.find(params[:id])

    respond_to do |format|
      if @property_facility.update_attributes(params[:property_facility])
        format.html { redirect_to @property_facility, notice: 'Property facility was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @property_facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_facilities/1
  # DELETE /property_facilities/1.json
  def destroy
    @property_facility = PropertyFacility.find(params[:id])
    @property_facility.destroy

    respond_to do |format|
      format.html { redirect_to property_facilities_url }
      format.js
      format.json { head :no_content }
    end
  end
end
