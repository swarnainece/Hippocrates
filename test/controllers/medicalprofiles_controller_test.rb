require 'test_helper'

class MedicalprofilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medicalprofile = medicalprofiles(:one)
  end

  test "should get index" do
    get medicalprofiles_url
    assert_response :success
  end

  test "should get new" do
    get new_medicalprofile_url
    assert_response :success
  end

  test "should create medicalprofile" do
    assert_difference('Medicalprofile.count') do
      post medicalprofiles_url, params: { medicalprofile: { Allergies: @medicalprofile.Allergies, ImmunizationStatus: @medicalprofile.ImmunizationStatus, SexuallyTransmittedDiseases: @medicalprofile.SexuallyTransmittedDiseases, Surgeries: @medicalprofile.Surgeries, UnderlyingMedicalIllness: @medicalprofile.UnderlyingMedicalIllness, user_id: @medicalprofile.user_id } }
    end

    assert_redirected_to medicalprofile_url(Medicalprofile.last)
  end

  test "should show medicalprofile" do
    get medicalprofile_url(@medicalprofile)
    assert_response :success
  end

  test "should get edit" do
    get edit_medicalprofile_url(@medicalprofile)
    assert_response :success
  end

  test "should update medicalprofile" do
    patch medicalprofile_url(@medicalprofile), params: { medicalprofile: { Allergies: @medicalprofile.Allergies, ImmunizationStatus: @medicalprofile.ImmunizationStatus, SexuallyTransmittedDiseases: @medicalprofile.SexuallyTransmittedDiseases, Surgeries: @medicalprofile.Surgeries, UnderlyingMedicalIllness: @medicalprofile.UnderlyingMedicalIllness, user_id: @medicalprofile.user_id } }
    assert_redirected_to medicalprofile_url(@medicalprofile)
  end

  test "should destroy medicalprofile" do
    assert_difference('Medicalprofile.count', -1) do
      delete medicalprofile_url(@medicalprofile)
    end

    assert_redirected_to medicalprofiles_url
  end
end
