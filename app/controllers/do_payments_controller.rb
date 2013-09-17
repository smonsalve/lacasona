class DoPaymentsController < ApplicationController
  def index
    # @projects = Project.search(params[:search])
    if params[:id_invoice]
      
    end
    
    @invoices = Invoice.all
    invoices.to_s
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @invoices }
    end
  end
end
