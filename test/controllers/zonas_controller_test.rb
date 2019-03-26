require 'test_helper'

class ZonasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zona = zonas(:one)
  end

  test "should get index" do
    get zonas_url, xhr: true
    assert_response :success
  end

  test "should get new" do
    get new_zona_url, xhr: true
    assert_response :success
  end

  test "should get edit" do
    get edit_zona_url(@zona), xhr: true
    assert_response :success
  end

  test "should show zona" do
    get zona_url(@zona), xhr: true
    assert_response :success
  end

  test "should destroy zona" do
    assert_difference('Zona.count', -1) do
      delete zona_url(@zona), xhr: true
    end
  end

end
