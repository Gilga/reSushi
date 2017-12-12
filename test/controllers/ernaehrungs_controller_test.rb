require 'test_helper'

class ErnaehrungsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ernaehrung = ernaehrungs(:one)
  end

  test "should get index" do
    get ernaehrungs_url
    assert_response :success
  end

  test "should get new" do
    get new_ernaehrung_url
    assert_response :success
  end

  test "should create ernaehrung" do
    assert_difference('Ernaehrung.count') do
      post ernaehrungs_url, params: { ernaehrung: { ernaehrung_bemerkung: @ernaehrung.ernaehrung_bemerkung, ernaehrung_bez: @ernaehrung.ernaehrung_bez } }
    end

    assert_redirected_to ernaehrung_url(Ernaehrung.last)
  end

  test "should show ernaehrung" do
    get ernaehrung_url(@ernaehrung)
    assert_response :success
  end

  test "should get edit" do
    get edit_ernaehrung_url(@ernaehrung)
    assert_response :success
  end

  test "should update ernaehrung" do
    patch ernaehrung_url(@ernaehrung), params: { ernaehrung: { ernaehrung_bemerkung: @ernaehrung.ernaehrung_bemerkung, ernaehrung_bez: @ernaehrung.ernaehrung_bez } }
    assert_redirected_to ernaehrung_url(@ernaehrung)
  end

  test "should destroy ernaehrung" do
    assert_difference('Ernaehrung.count', -1) do
      delete ernaehrung_url(@ernaehrung)
    end

    assert_redirected_to ernaehrungs_url
  end
end
