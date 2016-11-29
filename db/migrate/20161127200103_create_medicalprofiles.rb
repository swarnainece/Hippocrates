class CreateMedicalprofiles < ActiveRecord::Migration[5.0]
  def change
    create_table :medicalprofiles do |t|
      t.string :ImmunizationStatus
      t.string :Surgeries
      t.string :UnderlyingMedicalIllness
      t.string :Allergies
      t.string :SexuallyTransmittedDiseases
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
