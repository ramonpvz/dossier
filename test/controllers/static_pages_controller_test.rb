require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

  test "should get post" do
    get static_pages_post_url
    assert_response :success
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
  end

end
