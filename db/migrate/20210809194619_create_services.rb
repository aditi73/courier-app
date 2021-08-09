class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :name
      t.decimal :cost_per_kg
      t.timestamps
    end
  end
end
