class TaxRegimesController < ApplicationController
  # GET /tax_regimes
  # GET /tax_regimes.json
  def index
    @tax_regimes = TaxRegime.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tax_regimes }
    end
  end

  # GET /tax_regimes/1
  # GET /tax_regimes/1.json
  def show
    @tax_regime = TaxRegime.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tax_regime }
    end
  end

  # GET /tax_regimes/new
  # GET /tax_regimes/new.json
  def new
    @tax_regime = TaxRegime.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tax_regime }
    end
  end

  # GET /tax_regimes/1/edit
  def edit
    @tax_regime = TaxRegime.find(params[:id])
  end

  # POST /tax_regimes
  # POST /tax_regimes.json
  def create
    @tax_regime = TaxRegime.new(params[:tax_regime])

    respond_to do |format|
      if @tax_regime.save
        format.html { redirect_to @tax_regime, notice: 'Tax regime was successfully created.' }
        format.json { render json: @tax_regime, status: :created, location: @tax_regime }
      else
        format.html { render action: "new" }
        format.json { render json: @tax_regime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tax_regimes/1
  # PUT /tax_regimes/1.json
  def update
    @tax_regime = TaxRegime.find(params[:id])

    respond_to do |format|
      if @tax_regime.update_attributes(params[:tax_regime])
        format.html { redirect_to @tax_regime, notice: 'Tax regime was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tax_regime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tax_regimes/1
  # DELETE /tax_regimes/1.json
  def destroy
    @tax_regime = TaxRegime.find(params[:id])
    @tax_regime.destroy

    respond_to do |format|
      format.html { redirect_to tax_regimes_url }
      format.json { head :no_content }
    end
  end
end
