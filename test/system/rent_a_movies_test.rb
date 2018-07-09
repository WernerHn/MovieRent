require "application_system_test_case"

class RentAMoviesTest < ApplicationSystemTestCase
  setup do
    @rent_a_movie = rent_a_movies(:one)
  end

  test "visiting the index" do
    visit rent_a_movies_url
    assert_selector "h1", text: "Rent A Movies"
  end

  test "creating a Rent a movie" do
    visit rent_a_movies_url
    click_on "New Rent A Movie"

    click_on "Create Rent a movie"

    assert_text "Rent a movie was successfully created"
    click_on "Back"
  end

  test "updating a Rent a movie" do
    visit rent_a_movies_url
    click_on "Edit", match: :first

    click_on "Update Rent a movie"

    assert_text "Rent a movie was successfully updated"
    click_on "Back"
  end

  test "destroying a Rent a movie" do
    visit rent_a_movies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rent a movie was successfully destroyed"
  end
end
