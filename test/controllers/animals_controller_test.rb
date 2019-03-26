require 'test_helper'

class AnimalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal = animals(:one)
  end

  test "should get index" do
    get animals_url, xhr: true
    assert_response :success
  end

  test "should get new" do
    get new_animal_url, xhr: true
    assert_response :success
  end

  test "should get edit" do
    get edit_animal_url(@animal), xhr: true
    assert_response :success
  end

  test "should show animal" do
    get animal_url(@animal)
    assert_response :success
  end

  test "should destroy animal" do
    assert_difference('Animal.count', -1) do
      delete animal_url(@animal), xhr: true
    end
  end
end
