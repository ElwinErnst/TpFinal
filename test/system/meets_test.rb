require "application_system_test_case"

class MeetsTest < ApplicationSystemTestCase
  setup do
    @meet = meets(:one)
  end

  test "visiting the index" do
    visit meets_url
    assert_selector "h1", text: "Meets"
  end

  test "creating a Meet" do
    visit meets_url
    click_on "New Meet"

    fill_in "Date", with: @meet.date
    fill_in "End time", with: @meet.end_time
    fill_in "Event", with: @meet.event_id
    fill_in "Name", with: @meet.name
    fill_in "Speaker", with: @meet.speaker_id
    fill_in "Start time", with: @meet.start_time
    click_on "Create Meet"

    assert_text "Meet was successfully created"
    click_on "Back"
  end

  test "updating a Meet" do
    visit meets_url
    click_on "Edit", match: :first

    fill_in "Date", with: @meet.date
    fill_in "End time", with: @meet.end_time
    fill_in "Event", with: @meet.event_id
    fill_in "Name", with: @meet.name
    fill_in "Speaker", with: @meet.speaker_id
    fill_in "Start time", with: @meet.start_time
    click_on "Update Meet"

    assert_text "Meet was successfully updated"
    click_on "Back"
  end

  test "destroying a Meet" do
    visit meets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Meet was successfully destroyed"
  end
end
