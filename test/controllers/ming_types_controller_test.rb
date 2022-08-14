require "test_helper"

class MingTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ming_type = ming_types(:one)
  end

  test "should get index" do
    get ming_types_url
    assert_response :success
  end

  test "should get new" do
    get new_ming_type_url
    assert_response :success
  end

  test "should create ming_type" do
    assert_difference("MingType.count") do
      post ming_types_url, params: { ming_type: { acronym: @ming_type.acronym, description: @ming_type.description } }
    end

    assert_redirected_to ming_type_url(MingType.last)
  end

  test "should show ming_type" do
    get ming_type_url(@ming_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_ming_type_url(@ming_type)
    assert_response :success
  end

  test "should update ming_type" do
    patch ming_type_url(@ming_type), params: { ming_type: { acronym: @ming_type.acronym, description: @ming_type.description } }
    assert_redirected_to ming_type_url(@ming_type)
  end

  test "should destroy ming_type" do
    assert_difference("MingType.count", -1) do
      delete ming_type_url(@ming_type)
    end

    assert_redirected_to ming_types_url
  end
end
