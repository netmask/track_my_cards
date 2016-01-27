require 'test_helper'

class FoundingSourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @founding_source = founding_sources(:one)
  end

  test "should get index" do
    get founding_sources_url
    assert_response :success
  end

  test "should get new" do
    get new_founding_source_url
    assert_response :success
  end

  test "should create founding_source" do
    assert_difference('FoundingSource.count') do
      post founding_sources_url, params: { founding_source: { account_id: @founding_source.account_id, balance: @founding_source.balance, name: @founding_source.name } }
    end

    assert_redirected_to founding_source_path(FoundingSource.last)
  end

  test "should show founding_source" do
    get founding_source_url(@founding_source)
    assert_response :success
  end

  test "should get edit" do
    get edit_founding_source_url(@founding_source)
    assert_response :success
  end

  test "should update founding_source" do
    patch founding_source_url(@founding_source), params: { founding_source: { account_id: @founding_source.account_id, balance: @founding_source.balance, name: @founding_source.name } }
    assert_redirected_to founding_source_path(@founding_source)
  end

  test "should destroy founding_source" do
    assert_difference('FoundingSource.count', -1) do
      delete founding_source_url(@founding_source)
    end

    assert_redirected_to founding_sources_path
  end
end
