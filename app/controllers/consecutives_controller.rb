class ConsecutivesController < ApplicationController
  # GET /consecutives
  # GET /consecutives.json
  def index
    @consecutives = Consecutive.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @consecutives }
    end
  end

  # GET /consecutives/1
  # GET /consecutives/1.json
  def show
    @consecutive = Consecutive.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @consecutive }
    end
  end

  # GET /consecutives/new
  # GET /consecutives/new.json
  def new
    @consecutive = Consecutive.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @consecutive }
    end
  end

  # GET /consecutives/1/edit
  def edit
    @consecutive = Consecutive.find(params[:id])
  end

  # POST /consecutives
  # POST /consecutives.json
  def create
    @consecutive = Consecutive.new(params[:consecutive])

    respond_to do |format|
      if @consecutive.save
        format.html { redirect_to @consecutive, notice: 'Consecutive was successfully created.' }
        format.json { render json: @consecutive, status: :created, location: @consecutive }
      else
        format.html { render action: "new" }
        format.json { render json: @consecutive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /consecutives/1
  # PUT /consecutives/1.json
  def update
    @consecutive = Consecutive.find(params[:id])

    respond_to do |format|
      if @consecutive.update_attributes(params[:consecutive])
        format.html { redirect_to @consecutive, notice: 'Consecutive was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @consecutive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consecutives/1
  # DELETE /consecutives/1.json
  def destroy
    @consecutive = Consecutive.find(params[:id])
    @consecutive.destroy

    respond_to do |format|
      format.html { redirect_to consecutives_url }
      format.json { head :no_content }
    end
  end
end
