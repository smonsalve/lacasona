class OwnersController < ApplicationController
  # GET /people
  # GET /people.json
  def index
    if params[:term]
       @owners = Owner.order(:name).where("name like ?", "%#{params[:term]}%")
       render json: @people.map(&:name)
    else
      @owners = Owner.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @people }
      end
    end

  end

  # GET /people/1
  # GET /people/1.json
  def show
    @owner = Owner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @owner }
    end
  end

  # GET /people/new
  # GET /people/new.json
  def new
    @owner = Owner.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @owner }
    end
  end

  # GET /people/1/edit
  def edit
    @owner = Owner.find(params[:id])
  end

  # POST /people
  # POST /people.json
  def create
    @owner = Owner.new(params[:owner])

    respond_to do |format|
      if @owner.save
        format.html { redirect_to @owner, notice: 'Person was successfully created.' }
        format.json { render json: @owner, status: :created, location: @owner }
      else
        format.html { render action: "new" }
        format.json { render json: @owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /people/1
  # PUT /people/1.json
  def update
    @owner = Owner.find(params[:id])

    respond_to do |format|
      if @owner.update_attributes(params[:owner])
        format.html { redirect_to @owner, notice: 'Person was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @owner = Owner.find(params[:id])
    @owner.destroy

    respond_to do |format|
      format.html { redirect_to owners_url }
      format.json { head :no_content }
    end
  end
end
