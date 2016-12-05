require 'test_helper'

class SagasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @saga = sagas(:one)
  end

  test "should get index" do
    get sagas_url
    assert_response :success
  end

  test "should get new" do
    get new_saga_url
    assert_response :success
  end

  test "should create saga" do
    assert_difference('Saga.count') do
      post sagas_url, params: { saga: { Allergies: @saga.Allergies, ImmunizationStatus: @saga.ImmunizationStatus, SexuallyTransmittedDiseases: @saga.SexuallyTransmittedDiseases, Surgeries: @saga.Surgeries, UnderlyingMedicalIllness: @saga.UnderlyingMedicalIllness, profile_id: @saga.profile_id } }
    end

    assert_redirected_to saga_url(Saga.last)
  end

  test "should show saga" do
    get saga_url(@saga)
    assert_response :success
  end

  test "should get edit" do
    get edit_saga_url(@saga)
    assert_response :success
  end

  test "should update saga" do
    patch saga_url(@saga), params: { saga: { Allergies: @saga.Allergies, ImmunizationStatus: @saga.ImmunizationStatus, SexuallyTransmittedDiseases: @saga.SexuallyTransmittedDiseases, Surgeries: @saga.Surgeries, UnderlyingMedicalIllness: @saga.UnderlyingMedicalIllness, profile_id: @saga.profile_id } }
    assert_redirected_to saga_url(@saga)
  end

  test "should destroy saga" do
    assert_difference('Saga.count', -1) do
      delete saga_url(@saga)
    end

    assert_redirected_to sagas_url
  end
end
