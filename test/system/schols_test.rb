require "application_system_test_case"

class ScholsTest < ApplicationSystemTestCase
  setup do
    @schol = schols(:one)
  end

  test "visiting the index" do
    visit schols_url
    assert_selector "h1", text: "Schols"
  end

  test "creating a Schol" do
    visit schols_url
    click_on "New Schol"

    fill_in "Address", with: @schol.address
    fill_in "Age", with: @schol.age
    fill_in "Email", with: @schol.email
    fill_in "Name", with: @schol.name
    fill_in "Phone", with: @schol.phone
    click_on "Create Schol"

    assert_text "Schol was successfully created"
    click_on "Back"
  end

  test "updating a Schol" do
    visit schols_url
    click_on "Edit", match: :first

    fill_in "Address", with: @schol.address
    fill_in "Age", with: @schol.age
    fill_in "Email", with: @schol.email
    fill_in "Name", with: @schol.name
    fill_in "Phone", with: @schol.phone
    click_on "Update Schol"

    assert_text "Schol was successfully updated"
    click_on "Back"
  end

  test "destroying a Schol" do
    visit schols_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Schol was successfully destroyed"
  end
end
