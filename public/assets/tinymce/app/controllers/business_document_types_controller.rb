class BusinessDocumentTypesController < ApplicationController
  # GET /business_document_types
  # GET /business_document_types.json
  def index
    @business_document_types = BusinessDocumentType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @business_document_types }
    end
  end

  # GET /business_document_types/1
  # GET /business_document_types/1.json
  def show
    @business_document_type = BusinessDocumentType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @business_document_type }
    end
  end

  # GET /business_document_types/new
  # GET /business_document_types/new.json
  def new
    @business_document_type = BusinessDocumentType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @business_document_type }
    end
  end

  # GET /business_document_types/1/edit
  def edit
    @business_document_type = BusinessDocumentType.find(params[:id])
  end

  # POST /business_document_types
  # POST /business_document_types.json
  def create
    @business_document_type = BusinessDocumentType.new(params[:business_document_type])

    respond_to do |format|
      if @business_document_type.save
        format.html { redirect_to @business_document_type, notice: 'Business document type was successfully created.' }
        format.json { render json: @business_document_type, status: :created, location: @business_document_type }
      else
        format.html { render action: "new" }
        format.json { render json: @business_document_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /business_document_types/1
  # PUT /business_document_types/1.json
  def update
    @business_document_type = BusinessDocumentType.find(params[:id])

    respond_to do |format|
      if @business_document_type.update_attributes(params[:business_document_type])
        format.html { redirect_to @business_document_type, notice: 'Business document type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @business_document_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_document_types/1
  # DELETE /business_document_types/1.json
  def destroy
    @business_document_type = BusinessDocumentType.find(params[:id])
    @business_document_type.destroy

    respond_to do |format|
      format.html { redirect_to business_document_types_url }
      format.json { head :no_content }
    end
  end
end
