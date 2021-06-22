require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test "visiting the index" do
    visit events_url
    assert_selector "h1", text: "Events"
  end

  test "creating a Event" do
    visit events_url
    click_on "New Event"

    fill_in "Category", with: @event.category_id
    fill_in "Cost", with: @event.cost
    fill_in "End date", with: @event.end_date
    fill_in "Name", with: @event.name
    fill_in "Start date", with: @event.start_date
    fill_in "State", with: @event.state
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "updating a Event" do
    visit events_url
    click_on "Edit", match: :first

    fill_in "Category", with: @event.category_id
    fill_in "Cost", with: @event.cost
    fill_in "End date", with: @event.end_date
    fill_in "Name", with: @event.name
    fill_in "Start date", with: @event.start_date
    fill_in "State", with: @event.state
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "destroying a Event" do
    visit events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event was successfully destroyed"
  end
end
