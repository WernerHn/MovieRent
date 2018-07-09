class RentAMoviesController < ApplicationController
  before_action :set_rent_a_movie, only: [:show, :edit, :update, :destroy]

  # GET /rent_a_movies
  # GET /rent_a_movies.json
  def index
    @movies = Movie.all
  end

  # GET /rent_a_movies/1
  # GET /rent_a_movies/1.json
  def show
  end

  # GET /rent_a_movies/new
  def new
    @rent_a_movie = RentAMovie.new
  end

  # GET /rent_a_movies/1/edit
  def edit
  end

  # POST /rent_a_movies
  # POST /rent_a_movies.json
  def create
    @rent_a_movie = RentAMovie.new(rent_a_movie_params)

    respond_to do |format|
      if @rent_a_movie.save
        format.html { redirect_to @rent_a_movie, notice: 'Rent a movie was successfully created.' }
        format.json { render :show, status: :created, location: @rent_a_movie }
      else
        format.html { render :new }
        format.json { render json: @rent_a_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rent_a_movies/1
  # PATCH/PUT /rent_a_movies/1.json
  def update
    respond_to do |format|
      if @rent_a_movie.update(rent_a_movie_params)
        format.html { redirect_to @rent_a_movie, notice: 'Rent a movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @rent_a_movie }
      else
        format.html { render :edit }
        format.json { render json: @rent_a_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rent_a_movies/1
  # DELETE /rent_a_movies/1.json
  def destroy
    @rent_a_movie.destroy
    respond_to do |format|
      format.html { redirect_to rent_a_movies_url, notice: 'Rent a movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rent_a_movie
      @rent_a_movie = RentAMovie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rent_a_movie_params
      params.fetch(:rent_a_movie, {})
    end
end
