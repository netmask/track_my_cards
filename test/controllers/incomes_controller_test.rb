require 'test_helper'

class IncomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @income = incomes(:one)
  end

  test "should get index" do
    get incomes_url
    assert_response :success
  end

  test "should get new" do
    get new_income_url
    assert_response :success
  end

  test "should create income" do
    assert_difference('Income.count') do
      post incomes_url, params: { income: { ammount: @income.ammount, description: @income.description, name: @income.name, recurrent: @income.recurrent, recurrent_days: @income.recurrent_days, recurrent_start_date: @income.recurrent_start_date } }
    end

    assert_redirected_to income_path(Income.last)
  end

  test "should show income" do
    get income_url(@income)
    assert_response :success
  end

  test "should get edit" do
    get edit_income_url(@income)
    assert_response :success
  end

  test "should update income" do
    patch income_url(@income), params: { income: { ammount: @income.ammount, description: @income.description, name: @income.name, recurrent: @income.recurrent, recurrent_days: @income.recurrent_days, recurrent_start_date: @income.recurrent_start_date } }
    assert_redirected_to income_path(@income)
  end

  test "should destroy income" do
    assert_difference('Income.count', -1) do
      delete income_url(@income)
    end

    assert_redirected_to incomes_path
  end
end
