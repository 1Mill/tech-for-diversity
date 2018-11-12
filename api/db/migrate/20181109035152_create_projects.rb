class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.integer :issue_area
      t.string :location_city
      t.integer :location_state
      t.integer :status
      t.string :homepage
      t.text :description

      t.timestamps
    end
  end
end
