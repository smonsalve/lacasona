class LegalNaturesController < ApplicationController
  # GET /legal_natures
  # GET /legal_natures.json
  def index
    @legal_natures = LegalNature.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @legal_natures }
    end
  end

  # GET /legal_natures/1
  # GET /legal_natures/1.json
  def show
    @legal_nature = LegalNature.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @legal_nature }
    end
  end

  # GET /legal_natures/new
  # GET /legal_natures/new.json
  def new
    @legal_nature = LegalNature.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @legal_nature }
    end
  end

  # GET /legal_natures/1/edit
  def edit
    @legal_nature = LegalNature.find(params[:id])
  end

  # POST /legal_natures
  # POST /legal_natures.json
  def create
    @legal_nature = LegalNature.new(params[:legal_nature])

    respond_to do |format|
      if @legal_nature.save
        format.html { redirect_to @legal_nature, notice: 'Legal nature was successfully created.' }
        format.json { render json: @legal_nature, status: :created, location: @legal_nature }
      else
        format.html { render action: "new" }
        format.json { render json: @legal_nature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /legal_natures/1
  # PUT /legal_natures/1.json
  def update
    @legal_nature = LegalNature.find(params[:id])

    respond_to do |format|
      if @legal_nature.update_attributes(params[:legal_nature])
        format.html { redirect_to @legal_nature, notice: 'Legal nature was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @legal_nature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legal_natures/1
  # DELETE /legal_natures/1.json
  def destroy
    @legal_nature = LegalNature.find(params[:id])
    @legal_nature.destroy

    respond_to do |format|
      format.html { redirect_to legal_natures_url }
      format.json { head :no_content }
    end
  end
end
