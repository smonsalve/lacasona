class DoPaymentsController < ApplicationController
  def index
    if params[:id_invoice]
      
    end
    @invoices = Invoice.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @invoices }
    end
  end
end
