require 'test_helper'

class BillboardSongsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get billboard_songs_index_url
    assert_response :success
  end

  test "should get show" do
    get billboard_songs_show_url
    assert_response :success
  end

  test "should get new" do
    get billboard_songs_new_url
    assert_response :success
  end

  test "should get edit" do
    get billboard_songs_edit_url
    assert_response :success
  end

end
