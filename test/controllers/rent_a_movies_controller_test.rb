require 'test_helper'

class RentAMoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rent_a_movie = rent_a_movies(:one)
  end

  test "should get index" do
    get rent_a_movies_url
    assert_response :success
  end

  test "should get new" do
    get new_rent_a_movie_url
    assert_response :success
  end

  test "should create rent_a_movie" do
    assert_difference('RentAMovie.count') do
      post rent_a_movies_url, params: { rent_a_movie: {  } }
    end

    assert_redirected_to rent_a_movie_url(RentAMovie.last)
  end

  test "should show rent_a_movie" do
    get rent_a_movie_url(@rent_a_movie)
    assert_response :success
  end

  test "should get edit" do
    get edit_rent_a_movie_url(@rent_a_movie)
    assert_response :success
  end

  test "should update rent_a_movie" do
    patch rent_a_movie_url(@rent_a_movie), params: { rent_a_movie: {  } }
    assert_redirected_to rent_a_movie_url(@rent_a_movie)
  end

  test "should destroy rent_a_movie" do
    assert_difference('RentAMovie.count', -1) do
      delete rent_a_movie_url(@rent_a_movie)
    end

    assert_redirected_to rent_a_movies_url
  end
end
