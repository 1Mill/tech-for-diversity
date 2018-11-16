class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.references :project, foreign_key: true
      t.integer :name

      t.timestamps
    end
  end
end
