require 'test_helper'

class ZutatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zutat = zutats(:one)
  end

  test "should get index" do
    get zutats_url
    assert_response :success
  end

  test "should get new" do
    get new_zutat_url
    assert_response :success
  end

  test "should create zutat" do
    assert_difference('Zutat.count') do
      post zutats_url, params: { zutat: { ernaehrungs_id: @zutat.ernaehrungs_id, zutat_bemerkung: @zutat.zutat_bemerkung, zutat_name: @zutat.zutat_name } }
    end

    assert_redirected_to zutat_url(Zutat.last)
  end

  test "should show zutat" do
    get zutat_url(@zutat)
    assert_response :success
  end

  test "should get edit" do
    get edit_zutat_url(@zutat)
    assert_response :success
  end

  test "should update zutat" do
    patch zutat_url(@zutat), params: { zutat: { ernaehrungs_id: @zutat.ernaehrungs_id, zutat_bemerkung: @zutat.zutat_bemerkung, zutat_name: @zutat.zutat_name } }
    assert_redirected_to zutat_url(@zutat)
  end

  test "should destroy zutat" do
    assert_difference('Zutat.count', -1) do
      delete zutat_url(@zutat)
    end

    assert_redirected_to zutats_url
  end
end
