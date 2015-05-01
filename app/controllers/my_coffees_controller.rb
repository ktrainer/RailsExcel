class MyCoffeesController < ApplicationController
  before_action :set_my_coffee, only: [:show, :edit, :update, :destroy]

  # GET /my_coffees
  # GET /my_coffees.json
  def index
    @my_coffees = MyCoffee.all
    respond_to do |format|
      format.html     
      format.xls 
    end

  end

  # GET /my_coffees/1
  # GET /my_coffees/1.json
  def show
  end

  # GET /my_coffees/new
  def new
    @my_coffee = MyCoffee.new
  end

  # GET /my_coffees/1/edit
  def edit
  end

  # POST /my_coffees
  # POST /my_coffees.json
  def create
    @my_coffee = MyCoffee.new(my_coffee_params)

    respond_to do |format|
      if @my_coffee.save
        format.html { redirect_to @my_coffee, notice: 'My coffee was successfully created.' }
        format.json { render :show, status: :created, location: @my_coffee }
      else
        format.html { render :new }
        format.json { render json: @my_coffee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_coffees/1
  # PATCH/PUT /my_coffees/1.json
  def update
    respond_to do |format|
      if @my_coffee.update(my_coffee_params)
        format.html { redirect_to @my_coffee, notice: 'My coffee was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_coffee }
      else
        format.html { render :edit }
        format.json { render json: @my_coffee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_coffees/1
  # DELETE /my_coffees/1.json
  def destroy
    @my_coffee.destroy
    respond_to do |format|
      format.html { redirect_to my_coffees_url, notice: 'My coffee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_coffee
      @my_coffee = MyCoffee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_coffee_params
      params.require(:my_coffee).permit(:name, :roast, :ground, :origin, :notes)
    end
end
