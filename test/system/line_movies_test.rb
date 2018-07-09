require "application_system_test_case"

class LineMoviesTest < ApplicationSystemTestCase
  setup do
    @line_movie = line_movies(:one)
  end

  test "visiting the index" do
    visit line_movies_url
    assert_selector "h1", text: "Line Movies"
  end

  test "creating a Line movie" do
    visit line_movies_url
    click_on "New Line Movie"

    fill_in "Cart", with: @line_movie.cart_id
    fill_in "Movie", with: @line_movie.movie_id
    click_on "Create Line movie"

    assert_text "Line movie was successfully created"
    click_on "Back"
  end

  test "updating a Line movie" do
    visit line_movies_url
    click_on "Edit", match: :first

    fill_in "Cart", with: @line_movie.cart_id
    fill_in "Movie", with: @line_movie.movie_id
    click_on "Update Line movie"

    assert_text "Line movie was successfully updated"
    click_on "Back"
  end

  test "destroying a Line movie" do
    visit line_movies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Line movie was successfully destroyed"
  end
end
