require 'test_helper'

class SellDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sell_detail = sell_details(:one)
  end

  test "should get index" do
    get sell_details_url
    assert_response :success
  end

  test "should get new" do
    get new_sell_detail_url
    assert_response :success
  end

  test "should create sell_detail" do
    assert_difference('SellDetail.count') do
      post sell_details_url, params: { sell_detail: { cant: @sell_detail.cant, product_id: @sell_detail.product_id, sell_id: @sell_detail.sell_id } }
    end

    assert_redirected_to sell_detail_url(SellDetail.last)
  end

  test "should show sell_detail" do
    get sell_detail_url(@sell_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_sell_detail_url(@sell_detail)
    assert_response :success
  end

  test "should update sell_detail" do
    patch sell_detail_url(@sell_detail), params: { sell_detail: { cant: @sell_detail.cant, product_id: @sell_detail.product_id, sell_id: @sell_detail.sell_id } }
    assert_redirected_to sell_detail_url(@sell_detail)
  end

  test "should destroy sell_detail" do
    assert_difference('SellDetail.count', -1) do
      delete sell_detail_url(@sell_detail)
    end

    assert_redirected_to sell_details_url
  end
end
