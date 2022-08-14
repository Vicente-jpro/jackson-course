require "application_system_test_case"

class MingTypesTest < ApplicationSystemTestCase
  setup do
    @ming_type = ming_types(:one)
  end

  test "visiting the index" do
    visit ming_types_url
    assert_selector "h1", text: "Ming types"
  end

  test "should create ming type" do
    visit ming_types_url
    click_on "New ming type"

    fill_in "Acronym", with: @ming_type.acronym
    fill_in "Description", with: @ming_type.description
    click_on "Create Ming type"

    assert_text "Ming type was successfully created"
    click_on "Back"
  end

  test "should update Ming type" do
    visit ming_type_url(@ming_type)
    click_on "Edit this ming type", match: :first

    fill_in "Acronym", with: @ming_type.acronym
    fill_in "Description", with: @ming_type.description
    click_on "Update Ming type"

    assert_text "Ming type was successfully updated"
    click_on "Back"
  end

  test "should destroy Ming type" do
    visit ming_type_url(@ming_type)
    click_on "Destroy this ming type", match: :first

    assert_text "Ming type was successfully destroyed"
  end
end
