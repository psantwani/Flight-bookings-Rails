class CityAirportsController < ApplicationController
  before_action :set_city_airport, only: [:show, :edit, :update, :destroy]

  def list
    @city_airports = CityAirport.all
    respond_to do |format|
      format.json { render json: @city_airports }
    end  
  end

  # GET /city_airports
  # GET /city_airports.json
  def index
    @city_airports = CityAirport.all
  end

  # GET /city_airports/1
  # GET /city_airports/1.json
  def show
  end

  # GET /city_airports/new
  def new
    @city_airport = CityAirport.new
  end

  # GET /city_airports/1/edit
  def edit
  end

  # POST /city_airports
  # POST /city_airports.json
  def create
    @city_airport = CityAirport.new(city_airport_params)

    respond_to do |format|
      if @city_airport.save
        format.html { redirect_to @city_airport, notice: 'City airport was successfully created.' }
        format.json { render :show, status: :created, location: @city_airport }
      else
        format.html { render :new }
        format.json { render json: @city_airport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /city_airports/1
  # PATCH/PUT /city_airports/1.json
  def update
    respond_to do |format|
      if @city_airport.update(city_airport_params)
        format.html { redirect_to @city_airport, notice: 'City airport was successfully updated.' }
        format.json { render :show, status: :ok, location: @city_airport }
      else
        format.html { render :edit }
        format.json { render json: @city_airport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /city_airports/1
  # DELETE /city_airports/1.json
  def destroy
    @city_airport.destroy
    respond_to do |format|
      format.html { redirect_to city_airports_url, notice: 'City airport was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city_airport
      @city_airport = CityAirport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_airport_params
      params.require(:city_airport).permit(:city, :city_code, :airport, :picture)
    end
end
