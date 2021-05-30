require "application_system_test_case"

class MangakasTest < ApplicationSystemTestCase
  setup do
    @mangaka = mangakas(:one)
  end

  test "visiting the index" do
    visit mangakas_url
    assert_selector "h1", text: "Mangakas"
  end

  test "creating a Mangaka" do
    visit mangakas_url
    click_on "New Mangaka"

    fill_in "Image", with: @mangaka.image
    fill_in "Name", with: @mangaka.name
    click_on "Create Mangaka"

    assert_text "Mangaka was successfully created"
    click_on "Back"
  end

  test "updating a Mangaka" do
    visit mangakas_url
    click_on "Edit", match: :first

    fill_in "Image", with: @mangaka.image
    fill_in "Name", with: @mangaka.name
    click_on "Update Mangaka"

    assert_text "Mangaka was successfully updated"
    click_on "Back"
  end

  test "destroying a Mangaka" do
    visit mangakas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mangaka was successfully destroyed"
  end
end
