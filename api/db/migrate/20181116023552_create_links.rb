class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.references :project, foreign_key: true
      t.string :route
      t.integer :group

      t.timestamps
    end
  end
end
