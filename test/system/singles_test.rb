require "application_system_test_case"

class SinglesTest < ApplicationSystemTestCase
  setup do
    @single = singles(:one)
  end

  test "visiting the index" do
    visit singles_url
    assert_selector "h1", text: "Singles"
  end

  test "should create single" do
    visit singles_url
    click_on "New single"

    fill_in "Age", with: @single.age
    fill_in "Bio", with: @single.bio
    check "Liked" if @single.liked
    fill_in "Name", with: @single.name
    click_on "Create Single"

    assert_text "Single was successfully created"
    click_on "Back"
  end

  test "should update Single" do
    visit single_url(@single)
    click_on "Edit this single", match: :first

    fill_in "Age", with: @single.age
    fill_in "Bio", with: @single.bio
    check "Liked" if @single.liked
    fill_in "Name", with: @single.name
    click_on "Update Single"

    assert_text "Single was successfully updated"
    click_on "Back"
  end

  test "should destroy Single" do
    visit single_url(@single)
    click_on "Destroy this single", match: :first

    assert_text "Single was successfully destroyed"
  end
end
