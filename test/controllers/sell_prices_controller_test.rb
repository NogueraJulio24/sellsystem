require 'test_helper'

class SellPricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sell_price = sell_prices(:one)
  end

  test "should get index" do
    get sell_prices_url
    assert_response :success
  end

  test "should get new" do
    get new_sell_price_url
    assert_response :success
  end

  test "should create sell_price" do
    assert_difference('SellPrice.count') do
      post sell_prices_url, params: { sell_price: { cant: @sell_price.cant, price: @sell_price.price, total: @sell_price.total } }
    end

    assert_redirected_to sell_price_url(SellPrice.last)
  end

  test "should show sell_price" do
    get sell_price_url(@sell_price)
    assert_response :success
  end

  test "should get edit" do
    get edit_sell_price_url(@sell_price)
    assert_response :success
  end

  test "should update sell_price" do
    patch sell_price_url(@sell_price), params: { sell_price: { cant: @sell_price.cant, price: @sell_price.price, total: @sell_price.total } }
    assert_redirected_to sell_price_url(@sell_price)
  end

  test "should destroy sell_price" do
    assert_difference('SellPrice.count', -1) do
      delete sell_price_url(@sell_price)
    end

    assert_redirected_to sell_prices_url
  end
end
