require "application_system_test_case"

class MrksTest < ApplicationSystemTestCase
  setup do
    @mrk = mrks(:one)
  end

  test "visiting the index" do
    visit mrks_url
    assert_selector "h1", text: "Mrks"
  end

  test "creating a Mrk" do
    visit mrks_url
    click_on "New Mrk"

    fill_in "M1", with: @mrk.m1
    fill_in "M2", with: @mrk.m2
    fill_in "M3", with: @mrk.m3
    fill_in "M4", with: @mrk.m4
    fill_in "M5", with: @mrk.m5
    fill_in "Percent", with: @mrk.percent
    fill_in "Rank", with: @mrk.rank
    fill_in "Schol", with: @mrk.schol_id
    fill_in "Total", with: @mrk.total
    click_on "Create Mrk"

    assert_text "Mrk was successfully created"
    click_on "Back"
  end

  test "updating a Mrk" do
    visit mrks_url
    click_on "Edit", match: :first

    fill_in "M1", with: @mrk.m1
    fill_in "M2", with: @mrk.m2
    fill_in "M3", with: @mrk.m3
    fill_in "M4", with: @mrk.m4
    fill_in "M5", with: @mrk.m5
    fill_in "Percent", with: @mrk.percent
    fill_in "Rank", with: @mrk.rank
    fill_in "Schol", with: @mrk.schol_id
    fill_in "Total", with: @mrk.total
    click_on "Update Mrk"

    assert_text "Mrk was successfully updated"
    click_on "Back"
  end

  test "destroying a Mrk" do
    visit mrks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mrk was successfully destroyed"
  end
end
