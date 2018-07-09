require 'test_helper'

class LineMoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @line_movie = line_movies(:one)
  end

  test "should get index" do
    get line_movies_url
    assert_response :success
  end

  test "should get new" do
    get new_line_movie_url
    assert_response :success
  end

  test "should create line_movie" do
    assert_difference('LineMovie.count') do
      post line_movies_url, params: { line_movie: { cart_id: @line_movie.cart_id, movie_id: @line_movie.movie_id } }
    end

    assert_redirected_to line_movie_url(LineMovie.last)
  end

  test "should show line_movie" do
    get line_movie_url(@line_movie)
    assert_response :success
  end

  test "should get edit" do
    get edit_line_movie_url(@line_movie)
    assert_response :success
  end

  test "should update line_movie" do
    patch line_movie_url(@line_movie), params: { line_movie: { cart_id: @line_movie.cart_id, movie_id: @line_movie.movie_id } }
    assert_redirected_to line_movie_url(@line_movie)
  end

  test "should destroy line_movie" do
    assert_difference('LineMovie.count', -1) do
      delete line_movie_url(@line_movie)
    end

    assert_redirected_to line_movies_url
  end
end
