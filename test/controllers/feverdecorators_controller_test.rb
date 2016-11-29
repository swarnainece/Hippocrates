require 'test_helper'

class FeverdecoratorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feverdecorator = feverdecorators(:one)
  end

  test "should get index" do
    get feverdecorators_url
    assert_response :success
  end

  test "should get new" do
    get new_feverdecorator_url
    assert_response :success
  end

  test "should create feverdecorator" do
    assert_difference('Feverdecorator.count') do
      post feverdecorators_url, params: { feverdecorator: { description: @feverdecorator.description, fees: @feverdecorator.fees, name: @feverdecorator.name, temperature: @feverdecorator.temperature } }
    end

    assert_redirected_to feverdecorator_url(Feverdecorator.last)
  end

  test "should show feverdecorator" do
    get feverdecorator_url(@feverdecorator)
    assert_response :success
  end

  test "should get edit" do
    get edit_feverdecorator_url(@feverdecorator)
    assert_response :success
  end

  test "should update feverdecorator" do
    patch feverdecorator_url(@feverdecorator), params: { feverdecorator: { description: @feverdecorator.description, fees: @feverdecorator.fees, name: @feverdecorator.name, temperature: @feverdecorator.temperature } }
    assert_redirected_to feverdecorator_url(@feverdecorator)
  end

  test "should destroy feverdecorator" do
    assert_difference('Feverdecorator.count', -1) do
      delete feverdecorator_url(@feverdecorator)
    end

    assert_redirected_to feverdecorators_url
  end
end
