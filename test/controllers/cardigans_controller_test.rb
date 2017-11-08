require 'test_helper'

class CardigansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cardigan = cardigans(:one)
  end

  test "should get index" do
    get cardigans_url
    assert_response :success
  end

  test "should get new" do
    get new_cardigan_url
    assert_response :success
  end

  test "should create cardigan" do
    assert_difference('Cardigan.count') do
      post cardigans_url, params: { cardigan: { brand: @cardigan.brand, color: @cardigan.color } }
    end

    assert_redirected_to cardigan_url(Cardigan.last)
  end

  test "should show cardigan" do
    get cardigan_url(@cardigan)
    assert_response :success
  end

  test "should get edit" do
    get edit_cardigan_url(@cardigan)
    assert_response :success
  end

  test "should update cardigan" do
    patch cardigan_url(@cardigan), params: { cardigan: { brand: @cardigan.brand, color: @cardigan.color } }
    assert_redirected_to cardigan_url(@cardigan)
  end

  test "should destroy cardigan" do
    assert_difference('Cardigan.count', -1) do
      delete cardigan_url(@cardigan)
    end

    assert_redirected_to cardigans_url
  end
end
