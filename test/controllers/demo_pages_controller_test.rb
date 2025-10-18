require "test_helper"

class DemoPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get clipboard" do
    get demo_pages_clipboard_url
    assert_response :success
  end

  test "should get loopstudio" do
    get demo_pages_loopstudio_url
    assert_response :success
  end

  test "should get shortly" do
    get demo_pages_shortly_url
    assert_response :success
  end
end
