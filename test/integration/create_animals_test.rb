require 'test_helper'

class CreateAnimalsTest < ActionDispatch::IntegrationTest
  test "get new animal form and create animal" do
    get new_animal_url, xhr: true
    assert_template 'animals/new'
    assert_difference('Animal.count') do
      post animals_url, params: { animal: { nom: 'nom', foto: '', raza: 'raza', zona: 'zona', any_naixement: '12-12-2018', user: 'MyString' } }, xhr: true
    end
    follow_redirect!
    assert_template 'animals/show'
    assert_match "animal_new", response.body
  end
end
