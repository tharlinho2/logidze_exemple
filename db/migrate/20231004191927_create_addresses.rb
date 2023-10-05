class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses, id: :uuid do |t|
      t.string :state_name
      t.string :city_name
      t.string :address_line_1
      t.string :address_line_2
      t.string :district_name
      t.string :address_number
      t.integer :address_type_cd
      t.string :name
      t.references :address_category, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
