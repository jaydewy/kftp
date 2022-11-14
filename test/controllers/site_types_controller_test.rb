require "test_helper"

class SiteTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get site_type_index_url
    assert_response :success
  end

  test "should get new" do
    get site_type_new_url
    assert_response :success
  end

  test "should get edit" do
    get site_type_edit_url
    assert_response :success
  end
end
