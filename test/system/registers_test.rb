require "application_system_test_case"

class RegistersTest < ApplicationSystemTestCase
  setup do
    @register = registers(:one)
  end

  test "visiting the index" do
    visit registers_url
    assert_selector "h1", text: "Registers"
  end

  test "creating a Register" do
    visit registers_url
    click_on "New Register"

    fill_in "Date of birth", with: @register.date_of_birth
    fill_in "Firstname", with: @register.firstname
    fill_in "Gender", with: @register.gender
    fill_in "Lastname", with: @register.lastname
    fill_in "Marital status", with: @register.marital_status
    click_on "Create Register"

    assert_text "Register was successfully created"
    click_on "Back"
  end

  test "updating a Register" do
    visit registers_url
    click_on "Edit", match: :first

    fill_in "Date of birth", with: @register.date_of_birth
    fill_in "Firstname", with: @register.firstname
    fill_in "Gender", with: @register.gender
    fill_in "Lastname", with: @register.lastname
    fill_in "Marital status", with: @register.marital_status
    click_on "Update Register"

    assert_text "Register was successfully updated"
    click_on "Back"
  end

  test "destroying a Register" do
    visit registers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Register was successfully destroyed"
  end
end
