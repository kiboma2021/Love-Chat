require "test_helper"

class SinglesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @single = singles(:one)
  end

  test "should get index" do
    get singles_url
    assert_response :success
  end

  test "should get new" do
    get new_single_url
    assert_response :success
  end

  test "should create single" do
    assert_difference("Single.count") do
      post singles_url, params: { single: { age: @single.age, bio: @single.bio, liked: @single.liked, name: @single.name } }
    end

    assert_redirected_to single_url(Single.last)
  end

  test "should show single" do
    get single_url(@single)
    assert_response :success
  end

  test "should get edit" do
    get edit_single_url(@single)
    assert_response :success
  end

  test "should update single" do
    patch single_url(@single), params: { single: { age: @single.age, bio: @single.bio, liked: @single.liked, name: @single.name } }
    assert_redirected_to single_url(@single)
  end

  test "should destroy single" do
    assert_difference("Single.count", -1) do
      delete single_url(@single)
    end

    assert_redirected_to singles_url
  end
end
