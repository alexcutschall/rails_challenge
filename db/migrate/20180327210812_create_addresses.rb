class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :description
      t.string :street
      t.string :city
      t.string :state
      t.string :zip_code
      t.references :student, foreign_key: true

      t.timestamps null: false
    end
  end
end
