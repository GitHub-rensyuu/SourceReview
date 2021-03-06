require "test_helper"

class Admin::ClaimsControllerTest < ActionDispatch::IntegrationTest
  test "should get destroy" do
    get admin_claims_destroy_url
    assert_response :success
  end

  test "should get index" do
    get admin_claims_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_claims_show_url
    assert_response :success
  end
end
