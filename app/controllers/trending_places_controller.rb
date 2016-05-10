class TrendingPlacesController < ApplicationController
  before_action :set_trending_place, only: [:show, :edit, :update, :destroy]

  # GET /trending_places/list
  # GET /trending_places/list.json
  def list
    @trending_places = TrendingPlace.all
  end

  # GET /trending_places
  # GET /trending_places.json
  def index
    @trending_places = TrendingPlace.all
  end

  # GET /trending_places/1
  # GET /trending_places/1.json
  def show
  end

  # GET /trending_places/new
  def new
    @trending_place = TrendingPlace.new
  end

  # GET /trending_places/1/edit
  def edit
  end

  # POST /trending_places
  # POST /trending_places.json
  def create
    @trending_place = TrendingPlace.new(trending_place_params)

    respond_to do |format|
      if @trending_place.save
        format.html { redirect_to @trending_place, notice: 'Trending place was successfully created.' }
        format.json { render :show, status: :created, location: @trending_place }
      else
        format.html { render :new }
        format.json { render json: @trending_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trending_places/1
  # PATCH/PUT /trending_places/1.json
  def update
    respond_to do |format|
      if @trending_place.update(trending_place_params)
        format.html { redirect_to @trending_place, notice: 'Trending place was successfully updated.' }
        format.json { render :show, status: :ok, location: @trending_place }
      else
        format.html { render :edit }
        format.json { render json: @trending_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trending_places/1
  # DELETE /trending_places/1.json
  def destroy
    @trending_place.destroy
    respond_to do |format|
      format.html { redirect_to trending_places_url, notice: 'Trending place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trending_place
      @trending_place = TrendingPlace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trending_place_params
      params.require(:trending_place).permit(:name, :picture, :is_delete, :created_at)
    end
end
