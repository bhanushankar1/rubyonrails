require 'test_helper'

class MrksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mrk = mrks(:one)
  end

  test "should get index" do
    get mrks_url
    assert_response :success
  end

  test "should get new" do
    get new_mrk_url
    assert_response :success
  end

  test "should create mrk" do
    assert_difference('Mrk.count') do
      post mrks_url, params: { mrk: { m1: @mrk.m1, m2: @mrk.m2, m3: @mrk.m3, m4: @mrk.m4, m5: @mrk.m5, percent: @mrk.percent, rank: @mrk.rank, schol_id: @mrk.schol_id, total: @mrk.total } }
    end

    assert_redirected_to mrk_url(Mrk.last)
  end

  test "should show mrk" do
    get mrk_url(@mrk)
    assert_response :success
  end

  test "should get edit" do
    get edit_mrk_url(@mrk)
    assert_response :success
  end

  test "should update mrk" do
    patch mrk_url(@mrk), params: { mrk: { m1: @mrk.m1, m2: @mrk.m2, m3: @mrk.m3, m4: @mrk.m4, m5: @mrk.m5, percent: @mrk.percent, rank: @mrk.rank, schol_id: @mrk.schol_id, total: @mrk.total } }
    assert_redirected_to mrk_url(@mrk)
  end

  test "should destroy mrk" do
    assert_difference('Mrk.count', -1) do
      delete mrk_url(@mrk)
    end

    assert_redirected_to mrks_url
  end
end
