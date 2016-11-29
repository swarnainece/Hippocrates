class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :lastname
      t.string :Gender
      t.string :DateOfBirth
      t.string :BloodGroup
      t.string :RhFactor
      t.float :Height
      t.float :Weight
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
