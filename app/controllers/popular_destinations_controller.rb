class PopularDestinationsController < ApplicationController
  before_action :set_popular_destination, only: [:show, :edit, :update, :destroy]

  # GET /popular_destinations
  # GET /popular_destinations.json
  def list   
    @popular_destinations = PopularDestination.find_by_sql("Select * from popular_destinations inner join city_airports ON popular_destinations.destination_code = city_airports.city_code where popular_destinations.city = '#{params[:city]}'")  
  end

  # GET /popular_destinations
  # GET /popular_destinations.json
  def index
    @popular_destinations = PopularDestination.all
  end

  # GET /popular_destinations/1
  # GET /popular_destinations/1.json
  def show
  end

  # GET /popular_destinations/new
  def new
    @popular_destination = PopularDestination.new
  end

  # GET /popular_destinations/1/edit
  def edit
  end

  # POST /popular_destinations
  # POST /popular_destinations.json
  def create
    @popular_destination = PopularDestination.new(popular_destination_params)

    respond_to do |format|
      if @popular_destination.save
        format.html { redirect_to @popular_destination, notice: 'Popular destination was successfully created.' }
        format.json { render :show, status: :created, location: @popular_destination }
      else
        format.html { render :new }
        format.json { render json: @popular_destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /popular_destinations/1
  # PATCH/PUT /popular_destinations/1.json
  def update
    respond_to do |format|
      if @popular_destination.update(popular_destination_params)
        format.html { redirect_to @popular_destination, notice: 'Popular destination was successfully updated.' }
        format.json { render :show, status: :ok, location: @popular_destination }
      else
        format.html { render :edit }
        format.json { render json: @popular_destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /popular_destinations/1
  # DELETE /popular_destinations/1.json
  def destroy
    @popular_destination.destroy
    respond_to do |format|
      format.html { redirect_to popular_destinations_url, notice: 'Popular destination was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_popular_destination
      @popular_destination = PopularDestination.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def popular_destination_params
      params.require(:popular_destination).permit(:city, :city_code, :destination, :destination_code, :is_delete, :created_at)
    end
end
