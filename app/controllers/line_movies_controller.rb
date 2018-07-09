class LineMoviesController < ApplicationController
  before_action :set_line_movie, only: [:show, :edit, :update, :destroy]

  # GET /line_movies
  # GET /line_movies.json
  def index
    @line_movies = LineMovie.all
  end

  # GET /line_movies/1
  # GET /line_movies/1.json
  def show
  end

  # GET /line_movies/new
  def new
    @line_movie = LineMovie.new
  end

  # GET /line_movies/1/edit
  def edit
  end

  # POST /line_movies
  # POST /line_movies.json
  def create
    @cart = current_cart
    movie = Movie.find(params[:movies_id])
    @line_movie = @cart.add_movie(movie.id)

    respond_to do |format|
      if @line_movie.save
        format.html { redirect_to rent_a_movies_path }
        format.json { render :show, status: :created, location: @line_movie }
      else
        format.html { render :new }
        format.json { render json: @line_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /line_movies/1
  # PATCH/PUT /line_movies/1.json
  def update
    respond_to do |format|
      if @line_movie.update(line_movie_params)
        format.html { redirect_to @line_movie, notice: 'Line movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @line_movie }
      else
        format.html { render :edit }
        format.json { render json: @line_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_movies/1
  # DELETE /line_movies/1.json
  def destroy
    @line_movie.destroy
    respond_to do |format|
      format.html { redirect_to line_movies_url, notice: 'Line movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_movie
      @line_movie = LineMovie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_movie_params
      params.require(:line_movie).permit(:movie_id, :cart_id)
    end
end
