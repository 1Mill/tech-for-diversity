class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.references :user, foreign_key: true
      t.string :company
      t.integer :stage
      t.string :name_first
      t.string :name_last
      t.string :email
      t.string :phone
      t.string :address_street_1
      t.string :address_street_2
      t.string :address_city
      t.integer :address_state
      t.string :address_zipcode
      t.integer :company_kind
      t.text :mission_statement
      t.text :who_you_are
      t.text :who_you_help
      t.text :what_you_do
      t.text :current_services
      t.integer :update_frequency
      t.boolean :domain_registered

      t.timestamps
    end
  end
end
