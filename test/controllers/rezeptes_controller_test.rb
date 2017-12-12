require 'test_helper'

class RezeptesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rezepte = rezeptes(:one)
  end

  test "should get index" do
    get rezeptes_url
    assert_response :success
  end

  test "should get new" do
    get new_rezepte_url
    assert_response :success
  end

  test "should create rezepte" do
    assert_difference('Rezepte.count') do
      post rezeptes_url, params: { rezepte: { preis: @rezepte.preis, rezepte_bemerkung: @rezepte.rezepte_bemerkung, rezepte_name: @rezepte.rezepte_name, zutat_id: @rezepte.zutat_id } }
    end

    assert_redirected_to rezepte_url(Rezepte.last)
  end

  test "should show rezepte" do
    get rezepte_url(@rezepte)
    assert_response :success
  end

  test "should get edit" do
    get edit_rezepte_url(@rezepte)
    assert_response :success
  end

  test "should update rezepte" do
    patch rezepte_url(@rezepte), params: { rezepte: { preis: @rezepte.preis, rezepte_bemerkung: @rezepte.rezepte_bemerkung, rezepte_name: @rezepte.rezepte_name, zutat_id: @rezepte.zutat_id } }
    assert_redirected_to rezepte_url(@rezepte)
  end

  test "should destroy rezepte" do
    assert_difference('Rezepte.count', -1) do
      delete rezepte_url(@rezepte)
    end

    assert_redirected_to rezeptes_url
  end
end
