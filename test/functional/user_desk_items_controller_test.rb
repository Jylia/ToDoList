require 'test_helper'

class UserDeskItemsControllerTest < ActionController::TestCase
  setup do
    @user_desk_item = user_desk_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_desk_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_desk_item" do
    assert_difference('UserDeskItem.count') do
      post :create, user_desk_item: { desk_id: @user_desk_item.desk_id, user_id: @user_desk_item.user_id }
    end

    assert_redirected_to user_desk_item_path(assigns(:user_desk_item))
  end

  test "should show user_desk_item" do
    get :show, id: @user_desk_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_desk_item
    assert_response :success
  end

  test "should update user_desk_item" do
    put :update, id: @user_desk_item, user_desk_item: { desk_id: @user_desk_item.desk_id, user_id: @user_desk_item.user_id }
    assert_redirected_to user_desk_item_path(assigns(:user_desk_item))
  end

  test "should destroy user_desk_item" do
    assert_difference('UserDeskItem.count', -1) do
      delete :destroy, id: @user_desk_item
    end

    assert_redirected_to user_desk_items_path
  end
end
