require 'test_helper'

class ScholsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @schol = schols(:one)
  end

  test "should get index" do
    get schols_url
    assert_response :success
  end

  test "should get new" do
    get new_schol_url
    assert_response :success
  end

  test "should create schol" do
    assert_difference('Schol.count') do
      post schols_url, params: { schol: { address: @schol.address, age: @schol.age, email: @schol.email, name: @schol.name, phone: @schol.phone } }
    end

    assert_redirected_to schol_url(Schol.last)
  end

  test "should show schol" do
    get schol_url(@schol)
    assert_response :success
  end

  test "should get edit" do
    get edit_schol_url(@schol)
    assert_response :success
  end

  test "should update schol" do
    patch schol_url(@schol), params: { schol: { address: @schol.address, age: @schol.age, email: @schol.email, name: @schol.name, phone: @schol.phone } }
    assert_redirected_to schol_url(@schol)
  end

  test "should destroy schol" do
    assert_difference('Schol.count', -1) do
      delete schol_url(@schol)
    end

    assert_redirected_to schols_url
  end
end
