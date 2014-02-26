class LesseesController < ApplicationController
  # GET /people
  # GET /people.json
  def index
    if params[:term]
       @lessees = Lessee.order(:name).where("name like ?", "%#{params[:term]}%")
       render json: @people.map(&:name)
    else
      @lessees = Lessee.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @people }
      end
    end

  end

  # GET /people/1
  # GET /people/1.json
  def show
    @lessee = Lessee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @person }
    end
  end

  # GET /people/new
  # GET /people/new.json
  def new
    @lessee = Lessee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @person }
    end
  end

  # GET /people/1/edit
  def edit
    @lessee = Lessee.find(params[:id])
  end

  # POST /people
  # POST /people.json
  def create
    @lessee = Lessee.new(params[:lessee])

    respond_to do |format|
      if @lessee.save
        format.html { redirect_to @lessee, notice: 'Person was successfully created.' }
        format.json { render json: @lessee, status: :created, location: @lessee }
      else
        format.html { render action: "new" }
        format.json { render json: @lessee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /people/1
  # PUT /people/1.json
  def update
    @lessee = Lessee.find(params[:id])

    respond_to do |format|
      if @lessee.update_attributes(params[:lessee])
        format.html { redirect_to @lessee, notice: 'Person was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lessee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @lessee = Lessee.find(params[:id])
    @lessee.destroy

    respond_to do |format|
      format.html { redirect_to lessees_url }
      format.json { head :no_content }
    end
  end
end
