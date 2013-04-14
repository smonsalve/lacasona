class PaymentsController < ApplicationController
  # GET /payments
  # GET /payments.json
  def index
    @payments = Payment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @payments }
    end
  end

  # GET /payments/1
  # GET /payments/1.json
  def show
    @payment = Payment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @payment }
    end
  end

  # GET /payments/new
  # GET /payments/new.json
  def new
    @payment = Payment.new
    if params[:id_invoice]
      @payment.invoice_id = params[:id_invoice]
      @payment.payment_status_id = PaymentStatus.find_by_code_status('APPLIED').id
    end
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @payment }
    end
  end

  # GET /payments/1/edit
  def edit
    @payment = Payment.find(params[:id])
  end

  # POST /payments
  # POST /payments.json
  def create
    @payment = Payment.new(params[:payment])
 
    doc_type = DocumentType.find_by_name('PAYMENT').nil? ? DocumentType.create(:name =>'PAYMENT') : DocumentType.find_by_name('PAYMENT')
    consecutive = Consecutive.find_by_consecutive_type_id(doc_type.id).nil? ? Consecutive.create(:serie => 0, :consecutive_type_id => doc_type.id ) : Consecutive.find_by_consecutive_type_id(doc_type.id)
    
    payment_number = consecutive.serie
    until Payment.find_by_payment_number(payment_number).nil?
      payment_number += 1 
    end
    
    @payment.payment_number = payment_number
   
    respond_to do |format|
      if @payment.save
        consecutive.serie= payment_number +1
        consecutive.save
  
        Payment.do_payment(@payment)
        format.html { redirect_to @payment, notice: 'Payment was successfully created.' }
        format.json { render json: @payment, status: :created, location: @payment }
      else
        format.html { render action: "new" }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /payments/1
  # PUT /payments/1.json
  def update
    @payment = Payment.find(params[:id])

    respond_to do |format|
      if @payment.update_attributes(params[:payment])
        format.html { redirect_to @payment, notice: 'Payment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payments/1
  # DELETE /payments/1.json
  def destroy
    @payment = Payment.find(params[:id])
    @payment.destroy

    respond_to do |format|
      format.html { redirect_to payments_url }
      format.json { head :no_content }
    end
  end
end
