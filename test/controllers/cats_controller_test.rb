require 'test_helper'

class CatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cat = cats(:one)
  end

  test "should get index" do
    get cats_url
    assert_response :success
  end

  test "should get new" do
    get new_cat_url
    assert_response :success
  end

  test "should create cat" do
    assert_difference('Cat.count') do
      post cats_url, params: { cat: { colour: @cat.colour, date_spotted: @cat.date_spotted, description: @cat.description, location: @cat.location, picture: @cat.picture, rating: @cat.rating, would_pat_again: @cat.would_pat_again } }
    end

    assert_redirected_to cat_url(Cat.last)
  end

  test "should show cat" do
    get cat_url(@cat)
    assert_response :success
  end

  test "should get edit" do
    get edit_cat_url(@cat)
    assert_response :success
  end

  test "should update cat" do
    patch cat_url(@cat), params: { cat: { colour: @cat.colour, date_spotted: @cat.date_spotted, description: @cat.description, location: @cat.location, picture: @cat.picture, rating: @cat.rating, would_pat_again: @cat.would_pat_again } }
    assert_redirected_to cat_url(@cat)
  end

  test "should destroy cat" do
    assert_difference('Cat.count', -1) do
      delete cat_url(@cat)
    end

    assert_redirected_to cats_url
  end
end
