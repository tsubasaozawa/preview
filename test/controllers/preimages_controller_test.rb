require 'test_helper'

class PreimagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @preimage = preimages(:one)
  end

  test "should get index" do
    get preimages_url
    assert_response :success
  end

  test "should get new" do
    get new_preimage_url
    assert_response :success
  end

  test "should create preimage" do
    assert_difference('Preimage.count') do
      post preimages_url, params: { preimage: { content: @preimage.content, image: @preimage.image } }
    end

    assert_redirected_to preimage_url(Preimage.last)
  end

  test "should show preimage" do
    get preimage_url(@preimage)
    assert_response :success
  end

  test "should get edit" do
    get edit_preimage_url(@preimage)
    assert_response :success
  end

  test "should update preimage" do
    patch preimage_url(@preimage), params: { preimage: { content: @preimage.content, image: @preimage.image } }
    assert_redirected_to preimage_url(@preimage)
  end

  test "should destroy preimage" do
    assert_difference('Preimage.count', -1) do
      delete preimage_url(@preimage)
    end

    assert_redirected_to preimages_url
  end
end
