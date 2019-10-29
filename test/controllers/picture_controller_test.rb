require 'test_helper'

class PictureControllerTest < ActionDispatch::IntegrationTest
  test "should get location" do
    get picture_location_url
    assert_response :success
  end

  test "should get tag" do
    get picture_tag_url
    assert_response :success
  end

end
