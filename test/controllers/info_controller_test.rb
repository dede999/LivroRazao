require 'test_helper'

class InfoControllerTest < ActionDispatch::IntegrationTest
  test "should get sobre_mim" do
    get info_sobre_mim_url
    assert_response :success
  end

end
