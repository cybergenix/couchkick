require 'test_helper'

class FindentrepreneursControllerTest < ActionController::TestCase
  setup do
    @findentrepreneur = findentrepreneurs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:findentrepreneurs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create findentrepreneur" do
    assert_difference('Findentrepreneur.count') do
      post :create, findentrepreneur: { location: @findentrepreneur.location, usertype: @findentrepreneur.usertype, whatfor: @findentrepreneur.whatfor }
    end

    assert_redirected_to findentrepreneur_path(assigns(:findentrepreneur))
  end

  test "should show findentrepreneur" do
    get :show, id: @findentrepreneur
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @findentrepreneur
    assert_response :success
  end

  test "should update findentrepreneur" do
    put :update, id: @findentrepreneur, findentrepreneur: { location: @findentrepreneur.location, usertype: @findentrepreneur.usertype, whatfor: @findentrepreneur.whatfor }
    assert_redirected_to findentrepreneur_path(assigns(:findentrepreneur))
  end

  test "should destroy findentrepreneur" do
    assert_difference('Findentrepreneur.count', -1) do
      delete :destroy, id: @findentrepreneur
    end

    assert_redirected_to findentrepreneurs_path
  end
end
