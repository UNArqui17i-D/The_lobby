require 'test_helper'

class GlobalmessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @globalmessage = globalmessages(:one)
  end

  test "should get index" do
    get globalmessages_url
    assert_response :success
  end

  test "should get new" do
    get new_globalmessage_url
    assert_response :success
  end

  test "should create globalmessage" do
    assert_difference('Globalmessage.count') do
      post globalmessages_url, params: { globalmessage: { content: @globalmessage.content, username: @globalmessage.username } }
    end

    assert_redirected_to globalmessage_url(Globalmessage.last)
  end

  test "should show globalmessage" do
    get globalmessage_url(@globalmessage)
    assert_response :success
  end

  test "should get edit" do
    get edit_globalmessage_url(@globalmessage)
    assert_response :success
  end

  test "should update globalmessage" do
    patch globalmessage_url(@globalmessage), params: { globalmessage: { content: @globalmessage.content, username: @globalmessage.username } }
    assert_redirected_to globalmessage_url(@globalmessage)
  end

  test "should destroy globalmessage" do
    assert_difference('Globalmessage.count', -1) do
      delete globalmessage_url(@globalmessage)
    end

    assert_redirected_to globalmessages_url
  end
end
