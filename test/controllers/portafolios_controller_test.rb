require 'test_helper'

class PortafoliosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @portafolio = portafolios(:one)
  end

  test "should get index" do
    get portafolios_url
    assert_response :success
  end

  test "should get new" do
    get new_portafolio_url
    assert_response :success
  end

  test "should create portafolio" do
    assert_difference('Portafolio.count') do
      post portafolios_url, params: { portafolio: { email: @portafolio.email, first_name: @portafolio.first_name, lat_name: @portafolio.lat_name, twitter: @portafolio.twitter } }
    end

    assert_redirected_to portafolio_url(Portafolio.last)
  end

  test "should show portafolio" do
    get portafolio_url(@portafolio)
    assert_response :success
  end

  test "should get edit" do
    get edit_portafolio_url(@portafolio)
    assert_response :success
  end

  test "should update portafolio" do
    patch portafolio_url(@portafolio), params: { portafolio: { email: @portafolio.email, first_name: @portafolio.first_name, lat_name: @portafolio.lat_name, twitter: @portafolio.twitter } }
    assert_redirected_to portafolio_url(@portafolio)
  end

  test "should destroy portafolio" do
    assert_difference('Portafolio.count', -1) do
      delete portafolio_url(@portafolio)
    end

    assert_redirected_to portafolios_url
  end
end
