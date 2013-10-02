class BalanceMovementsController < ApplicationController
  # GET /balance_movements
  # GET /balance_movements.json
  def index
    @balance_movements = BalanceMovement.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @balance_movements }
    end
  end

  # GET /balance_movements/1
  # GET /balance_movements/1.json
  def show
    @balance_movement = BalanceMovement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @balance_movement }
    end
  end

  # GET /balance_movements/new
  # GET /balance_movements/new.json
  def new
    @balance_movement = BalanceMovement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @balance_movement }
    end
  end

  # GET /balance_movements/1/edit
  def edit
    @balance_movement = BalanceMovement.find(params[:id])
  end

  # POST /balance_movements
  # POST /balance_movements.json
  def create
    @balance_movement = BalanceMovement.new(params[:balance_movement])

    respond_to do |format|
      if @balance_movement.save
        format.html { redirect_to @balance_movement, notice: 'Balance movement was successfully created.' }
        format.json { render json: @balance_movement, status: :created, location: @balance_movement }
      else
        format.html { render action: "new" }
        format.json { render json: @balance_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /balance_movements/1
  # PUT /balance_movements/1.json
  def update
    @balance_movement = BalanceMovement.find(params[:id])

    respond_to do |format|
      if @balance_movement.update_attributes(params[:balance_movement])
        format.html { redirect_to @balance_movement, notice: 'Balance movement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @balance_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /balance_movements/1
  # DELETE /balance_movements/1.json
  def destroy
    @balance_movement = BalanceMovement.find(params[:id])
    @balance_movement.destroy

    respond_to do |format|
      format.html { redirect_to balance_movements_url }
      format.json { head :no_content }
    end
  end
end
