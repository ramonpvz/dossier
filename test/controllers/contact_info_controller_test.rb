require 'test_helper'

class ContactInfoControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get contact_info_create_url
    assert_response :success
  end

end
