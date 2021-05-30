require "application_system_test_case"

class ComicsTest < ApplicationSystemTestCase
  setup do
    @comic = comics(:one)
  end

  test "visiting the index" do
    visit comics_url
    assert_selector "h1", text: "Comics"
  end

  test "creating a Comic" do
    visit comics_url
    click_on "New Comic"

    fill_in "Generos", with: @comic.generos
    fill_in "Image", with: @comic.image
    fill_in "Is active", with: @comic.is_active
    fill_in "Name", with: @comic.name
    fill_in "Publish date", with: @comic.publish_date
    fill_in "Sinopsis", with: @comic.sinopsis
    click_on "Create Comic"

    assert_text "Comic was successfully created"
    click_on "Back"
  end

  test "updating a Comic" do
    visit comics_url
    click_on "Edit", match: :first

    fill_in "Generos", with: @comic.generos
    fill_in "Image", with: @comic.image
    fill_in "Is active", with: @comic.is_active
    fill_in "Name", with: @comic.name
    fill_in "Publish date", with: @comic.publish_date
    fill_in "Sinopsis", with: @comic.sinopsis
    click_on "Update Comic"

    assert_text "Comic was successfully updated"
    click_on "Back"
  end

  test "destroying a Comic" do
    visit comics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comic was successfully destroyed"
  end
end
