require 'test_helper'

class RepairProblemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @repair_problem = repair_problems(:one)
  end

  test "should get index" do
    get repair_problems_url
    assert_response :success
  end

  test "should get new" do
    get new_repair_problem_url
    assert_response :success
  end

  test "should create repair_problem" do
    assert_difference('RepairProblem.count') do
      post repair_problems_url, params: { repair_problem: { problem_id: @repair_problem.problem_id, repair_id: @repair_problem.repair_id } }
    end

    assert_redirected_to repair_problem_url(RepairProblem.last)
  end

  test "should show repair_problem" do
    get repair_problem_url(@repair_problem)
    assert_response :success
  end

  test "should get edit" do
    get edit_repair_problem_url(@repair_problem)
    assert_response :success
  end

  test "should update repair_problem" do
    patch repair_problem_url(@repair_problem), params: { repair_problem: { problem_id: @repair_problem.problem_id, repair_id: @repair_problem.repair_id } }
    assert_redirected_to repair_problem_url(@repair_problem)
  end

  test "should destroy repair_problem" do
    assert_difference('RepairProblem.count', -1) do
      delete repair_problem_url(@repair_problem)
    end

    assert_redirected_to repair_problems_url
  end
end
