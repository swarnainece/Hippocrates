class CreateFeverdecorators < ActiveRecord::Migration[5.0]
  def change
    create_table :feverdecorators do |t|
      t.string :name
      t.string :temperature
      t.string :description
      t.decimal :fees

      t.timestamps
    end
  end
end
