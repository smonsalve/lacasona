class PaymentStatusesController < ApplicationController
  # GET /payment_statuses
  # GET /payment_statuses.json
  def index
    @payment_statuses = PaymentStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @payment_statuses }
    end
  end

  # GET /payment_statuses/1
  # GET /payment_statuses/1.json
  def show
    @payment_status = PaymentStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @payment_status }
    end
  end

  # GET /payment_statuses/new
  # GET /payment_statuses/new.json
  def new
    @payment_status = PaymentStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @payment_status }
    end
  end

  # GET /payment_statuses/1/edit
  def edit
    @payment_status = PaymentStatus.find(params[:id])
  end

  # POST /payment_statuses
  # POST /payment_statuses.json
  def create
    @payment_status = PaymentStatus.new(params[:payment_status])

    respond_to do |format|
      if @payment_status.save
        format.html { redirect_to @payment_status, notice: 'Payment status was successfully created.' }
        format.json { render json: @payment_status, status: :created, location: @payment_status }
      else
        format.html { render action: "new" }
        format.json { render json: @payment_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /payment_statuses/1
  # PUT /payment_statuses/1.json
  def update
    @payment_status = PaymentStatus.find(params[:id])

    respond_to do |format|
      if @payment_status.update_attributes(params[:payment_status])
        format.html { redirect_to @payment_status, notice: 'Payment status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @payment_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_statuses/1
  # DELETE /payment_statuses/1.json
  def destroy
    @payment_status = PaymentStatus.find(params[:id])
    @payment_status.destroy

    respond_to do |format|
      format.html { redirect_to payment_statuses_url }
      format.json { head :no_content }
    end
  end
end
