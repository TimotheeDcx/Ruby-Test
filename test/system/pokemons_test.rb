require "application_system_test_case"

class IanimalsTest < ApplicationSystemTestCase
  setup do
    @ianimal = ianimals(:one)
  end

  test "visiting the index" do
    visit ianimals_url
    assert_selector "h1", text: "Ianimals"
  end

  test "should create ianimal" do
    visit ianimals_url
    click_on "New ianimal"

    fill_in "Nompoke", with: @ianimal.nompoke
    fill_in "Puissancepoke", with: @ianimal.puissancepoke
    fill_in "Typepoke", with: @ianimal.typepoke
    click_on "Create Ianimal"

    assert_text "Ianimal was successfully created"
    click_on "Back"
  end

  test "should update Ianimal" do
    visit pokemon_url(@ianimal)
    click_on "Edit this ianimal", match: :first

    fill_in "Nompoke", with: @ianimal.nompoke
    fill_in "Puissancepoke", with: @ianimal.puissancepoke
    fill_in "Typepoke", with: @ianimal.typepoke
    click_on "Update Ianimal"

    assert_text "Ianimal was successfully updated"
    click_on "Back"
  end

  test "should destroy Ianimal" do
    visit pokemon_url(@ianimal)
    click_on "Destroy this ianimal", match: :first

    assert_text "Ianimal was successfully destroyed"
  end
end
