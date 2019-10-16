require "application_system_test_case"

class PreimagesTest < ApplicationSystemTestCase
  setup do
    @preimage = preimages(:one)
  end

  test "visiting the index" do
    visit preimages_url
    assert_selector "h1", text: "Preimages"
  end

  test "creating a Preimage" do
    visit preimages_url
    click_on "New Preimage"

    fill_in "Content", with: @preimage.content
    fill_in "Image", with: @preimage.image
    click_on "Create Preimage"

    assert_text "Preimage was successfully created"
    click_on "Back"
  end

  test "updating a Preimage" do
    visit preimages_url
    click_on "Edit", match: :first

    fill_in "Content", with: @preimage.content
    fill_in "Image", with: @preimage.image
    click_on "Update Preimage"

    assert_text "Preimage was successfully updated"
    click_on "Back"
  end

  test "destroying a Preimage" do
    visit preimages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Preimage was successfully destroyed"
  end
end
