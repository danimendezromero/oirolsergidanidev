require 'test_helper'

class LlistarZonesTest < ActionDispatch::IntegrationTest
  test "llistarzones" do
    get zones_url, xhr: true
    assert_response :success
  end
end
