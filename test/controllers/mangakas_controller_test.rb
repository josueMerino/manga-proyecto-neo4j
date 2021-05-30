require "test_helper"

class MangakasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mangaka = mangakas(:one)
  end

  test "should get index" do
    get mangakas_url
    assert_response :success
  end

  test "should get new" do
    get new_mangaka_url
    assert_response :success
  end

  test "should create mangaka" do
    assert_difference('Mangaka.count') do
      post mangakas_url, params: { mangaka: { image: @mangaka.image, name: @mangaka.name } }
    end

    assert_redirected_to mangaka_url(Mangaka.last)
  end

  test "should show mangaka" do
    get mangaka_url(@mangaka)
    assert_response :success
  end

  test "should get edit" do
    get edit_mangaka_url(@mangaka)
    assert_response :success
  end

  test "should update mangaka" do
    patch mangaka_url(@mangaka), params: { mangaka: { image: @mangaka.image, name: @mangaka.name } }
    assert_redirected_to mangaka_url(@mangaka)
  end

  test "should destroy mangaka" do
    assert_difference('Mangaka.count', -1) do
      delete mangaka_url(@mangaka)
    end

    assert_redirected_to mangakas_url
  end
end
