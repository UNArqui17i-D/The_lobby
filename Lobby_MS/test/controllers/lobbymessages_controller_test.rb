require 'test_helper'

class LobbymessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lobbymessage = lobbymessages(:one)
  end

  test "should get index" do
    get lobbymessages_url
    assert_response :success
  end

  test "should get new" do
    get new_lobbymessage_url
    assert_response :success
  end

  test "should create lobbymessage" do
    assert_difference('Lobbymessage.count') do
      post lobbymessages_url, params: { lobbymessage: { iduser: @lobbymessage.iduser, messagecontent: @lobbymessage.messagecontent } }
    end

    assert_redirected_to lobbymessage_url(Lobbymessage.last)
  end

  test "should show lobbymessage" do
    get lobbymessage_url(@lobbymessage)
    assert_response :success
  end

  test "should get edit" do
    get edit_lobbymessage_url(@lobbymessage)
    assert_response :success
  end

  test "should update lobbymessage" do
    patch lobbymessage_url(@lobbymessage), params: { lobbymessage: { iduser: @lobbymessage.iduser, messagecontent: @lobbymessage.messagecontent } }
    assert_redirected_to lobbymessage_url(@lobbymessage)
  end

  test "should destroy lobbymessage" do
    assert_difference('Lobbymessage.count', -1) do
      delete lobbymessage_url(@lobbymessage)
    end

    assert_redirected_to lobbymessages_url
  end
end
