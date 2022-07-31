require "test_helper"

class LotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lots_index_url
    assert_response :success
  end

  test "should get new" do
    get lots_new_url
    assert_response :success
  end

  test "should get create" do
    get lots_create_url
    assert_response :success
  end

  test "should get show" do
    get lots_show_url
    assert_response :success
  end

  test "should get edit" do
    get lots_edit_url
    assert_response :success
  end

  test "should get update" do
    get lots_update_url
    assert_response :success
  end

  test "should get destroy" do
    get lots_destroy_url
    assert_response :success
  end

  test "should get list" do
    get lots_list_url
    assert_response :success
  end
end
