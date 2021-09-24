class CreateMeasurements < ActiveRecord::Migration[6.1]
  def change
    create_table :measurements do |t|
      t.string :name
      t.string :photo

      t.timestamps
    end
    add_index :measurements, :name
    add_index :measurements, :photo
  end
end
