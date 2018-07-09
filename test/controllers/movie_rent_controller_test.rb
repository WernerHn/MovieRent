require 'test_helper'

class MovieRentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get movie_rent_index_url
    assert_response :success
  end

end
