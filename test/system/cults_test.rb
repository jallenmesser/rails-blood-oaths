require "application_system_test_case"

class CultsTest < ApplicationSystemTestCase
  setup do
    @cult = cults(:one)
  end

  test "visiting the index" do
    visit cults_url
    assert_selector "h1", text: "Cults"
  end

  test "creating a Cult" do
    visit cults_url
    click_on "New Cult"

    fill_in "Founding year", with: @cult.founding_year
    fill_in "Location", with: @cult.location
    fill_in "Minimum age", with: @cult.minimum_age
    fill_in "Name", with: @cult.name
    fill_in "Slogan", with: @cult.slogan
    click_on "Create Cult"

    assert_text "Cult was successfully created"
    click_on "Back"
  end

  test "updating a Cult" do
    visit cults_url
    click_on "Edit", match: :first

    fill_in "Founding year", with: @cult.founding_year
    fill_in "Location", with: @cult.location
    fill_in "Minimum age", with: @cult.minimum_age
    fill_in "Name", with: @cult.name
    fill_in "Slogan", with: @cult.slogan
    click_on "Update Cult"

    assert_text "Cult was successfully updated"
    click_on "Back"
  end

  test "destroying a Cult" do
    visit cults_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cult was successfully destroyed"
  end
end
