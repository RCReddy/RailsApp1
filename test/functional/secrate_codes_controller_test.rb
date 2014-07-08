require 'test_helper'

class SecrateCodesControllerTest < ActionController::TestCase
  setup do
    @secrate_code = secrate_codes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:secrate_codes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create secrate_code" do
    assert_difference('SecrateCode.count') do
      post :create, secrate_code: { secrate_code: @secrate_code.secrate_code }
    end

    assert_redirected_to secrate_code_path(assigns(:secrate_code))
  end

  test "should show secrate_code" do
    get :show, id: @secrate_code
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @secrate_code
    assert_response :success
  end

  test "should update secrate_code" do
    put :update, id: @secrate_code, secrate_code: { secrate_code: @secrate_code.secrate_code }
    assert_redirected_to secrate_code_path(assigns(:secrate_code))
  end

  test "should destroy secrate_code" do
    assert_difference('SecrateCode.count', -1) do
      delete :destroy, id: @secrate_code
    end

    assert_redirected_to secrate_codes_path
  end
end
