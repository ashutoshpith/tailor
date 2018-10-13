require "application_system_test_case"

class RepairProblemsTest < ApplicationSystemTestCase
  setup do
    @repair_problem = repair_problems(:one)
  end

  test "visiting the index" do
    visit repair_problems_url
    assert_selector "h1", text: "Repair Problems"
  end

  test "creating a Repair problem" do
    visit repair_problems_url
    click_on "New Repair Problem"

    fill_in "Problem", with: @repair_problem.problem_id
    fill_in "Repair", with: @repair_problem.repair_id
    click_on "Create Repair problem"

    assert_text "Repair problem was successfully created"
    click_on "Back"
  end

  test "updating a Repair problem" do
    visit repair_problems_url
    click_on "Edit", match: :first

    fill_in "Problem", with: @repair_problem.problem_id
    fill_in "Repair", with: @repair_problem.repair_id
    click_on "Update Repair problem"

    assert_text "Repair problem was successfully updated"
    click_on "Back"
  end

  test "destroying a Repair problem" do
    visit repair_problems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Repair problem was successfully destroyed"
  end
end
