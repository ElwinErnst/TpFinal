require "application_system_test_case"

class InscriptionsTest < ApplicationSystemTestCase
  setup do
    @inscription = inscriptions(:one)
  end

  test "visiting the index" do
    visit inscriptions_url
    assert_selector "h1", text: "Inscriptions"
  end

  test "creating a Inscription" do
    visit inscriptions_url
    click_on "New Inscription"

    fill_in "Event", with: @inscription.event_id
    fill_in "Payment", with: @inscription.payment
    fill_in "State", with: @inscription.state
    fill_in "User", with: @inscription.user_id
    click_on "Create Inscription"

    assert_text "Inscription was successfully created"
    click_on "Back"
  end

  test "updating a Inscription" do
    visit inscriptions_url
    click_on "Edit", match: :first

    fill_in "Event", with: @inscription.event_id
    fill_in "Payment", with: @inscription.payment
    fill_in "State", with: @inscription.state
    fill_in "User", with: @inscription.user_id
    click_on "Update Inscription"

    assert_text "Inscription was successfully updated"
    click_on "Back"
  end

  test "destroying a Inscription" do
    visit inscriptions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inscription was successfully destroyed"
  end
end
