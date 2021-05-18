require "application_system_test_case"

class DronesTest < ApplicationSystemTestCase
  setup do
    @drone = drones(:one)
  end

  test "visiting the index" do
    visit drones_url
    assert_selector "h1", text: "Drones"
  end

  test "creating a Drone" do
    visit drones_url
    click_on "New Drone"

    click_on "Create Drone"

    assert_text "Drone was successfully created"
    click_on "Back"
  end

  test "updating a Drone" do
    visit drones_url
    click_on "Edit", match: :first

    click_on "Update Drone"

    assert_text "Drone was successfully updated"
    click_on "Back"
  end

  test "destroying a Drone" do
    visit drones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Drone was successfully destroyed"
  end
end
