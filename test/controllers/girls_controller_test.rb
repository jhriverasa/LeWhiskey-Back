require 'test_helper'

class GirlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @girl = girls(:one)
  end

  test "should get index" do
    get girls_url, as: :json
    assert_response :success
  end

  test "should create girl" do
    assert_difference('Girl.count') do
      post girls_url, params: { girl: { cc: @girl.cc, description: @girl.description, name: @girl.name } }, as: :json
    end

    assert_response 201
  end

  test "should show girl" do
    get girl_url(@girl), as: :json
    assert_response :success
  end

  test "should update girl" do
    patch girl_url(@girl), params: { girl: { cc: @girl.cc, description: @girl.description, name: @girl.name } }, as: :json
    assert_response 200
  end

  test "should destroy girl" do
    assert_difference('Girl.count', -1) do
      delete girl_url(@girl), as: :json
    end

    assert_response 204
  end
end
