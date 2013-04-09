class InvoiceStatusesController < ApplicationController
  # GET /invoice_statuses
  # GET /invoice_statuses.json
  def index
    @invoice_statuses = InvoiceStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @invoice_statuses }
    end
  end

  # GET /invoice_statuses/1
  # GET /invoice_statuses/1.json
  def show
    @invoice_status = InvoiceStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @invoice_status }
    end
  end

  # GET /invoice_statuses/new
  # GET /invoice_statuses/new.json
  def new
    @invoice_status = InvoiceStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @invoice_status }
    end
  end

  # GET /invoice_statuses/1/edit
  def edit
    @invoice_status = InvoiceStatus.find(params[:id])
  end

  # POST /invoice_statuses
  # POST /invoice_statuses.json
  def create
    @invoice_status = InvoiceStatus.new(params[:invoice_status])

    respond_to do |format|
      if @invoice_status.save
        format.html { redirect_to @invoice_status, notice: 'Invoice status was successfully created.' }
        format.json { render json: @invoice_status, status: :created, location: @invoice_status }
      else
        format.html { render action: "new" }
        format.json { render json: @invoice_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /invoice_statuses/1
  # PUT /invoice_statuses/1.json
  def update
    @invoice_status = InvoiceStatus.find(params[:id])

    respond_to do |format|
      if @invoice_status.update_attributes(params[:invoice_status])
        format.html { redirect_to @invoice_status, notice: 'Invoice status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @invoice_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoice_statuses/1
  # DELETE /invoice_statuses/1.json
  def destroy
    @invoice_status = InvoiceStatus.find(params[:id])
    @invoice_status.destroy

    respond_to do |format|
      format.html { redirect_to invoice_statuses_url }
      format.json { head :no_content }
    end
  end
end
