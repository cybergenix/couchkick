require 'test_helper'

class FriendshipsControllerTest < ActionController::TestCase
  setup do
    @friendship = friendships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:friendships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create friendship" do
    assert_difference('Friendship.count') do
      post :create, friendship: { entrepreneur_id: @friendship.entrepreneur_id, friend_id: @friendship.friend_id }
    end

    assert_redirected_to friendship_path(assigns(:friendship))
  end

  test "should show friendship" do
    get :show, id: @friendship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @friendship
    assert_response :success
  end

  test "should update friendship" do
    put :update, id: @friendship, friendship: { entrepreneur_id: @friendship.entrepreneur_id, friend_id: @friendship.friend_id }
    assert_redirected_to friendship_path(assigns(:friendship))
  end

  test "should destroy friendship" do
    assert_difference('Friendship.count', -1) do
      delete :destroy, id: @friendship
    end

    assert_redirected_to friendships_path
  end
end
