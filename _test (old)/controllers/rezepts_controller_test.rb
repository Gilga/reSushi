require 'test_helper'

class RezeptsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rezept = rezepts(:one)
  end

  test "should get index" do
    get rezepts_url
    assert_response :success
  end

  test "should get new" do
    get new_rezept_url
    assert_response :success
  end

  test "should create rezept" do
    assert_difference('Rezept.count') do
      post rezepts_url, params: { rezept: { rezept_bemerkung: @rezept.rezept_bemerkung, rezept_id: @rezept.rezept_id, rezept_name: @rezept.rezept_name } }
    end

    assert_redirected_to rezept_url(Rezept.last)
  end

  test "should show rezept" do
    get rezept_url(@rezept)
    assert_response :success
  end

  test "should get edit" do
    get edit_rezept_url(@rezept)
    assert_response :success
  end

  test "should update rezept" do
    patch rezept_url(@rezept), params: { rezept: { rezept_bemerkung: @rezept.rezept_bemerkung, rezept_id: @rezept.rezept_id, rezept_name: @rezept.rezept_name } }
    assert_redirected_to rezept_url(@rezept)
  end

  test "should destroy rezept" do
    assert_difference('Rezept.count', -1) do
      delete rezept_url(@rezept)
    end

    assert_redirected_to rezepts_url
  end
end
