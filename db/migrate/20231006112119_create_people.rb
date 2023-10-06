class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people, id: :uuid do |t|
      t.string :name
      t.string :phone_number
      t.string :mobile_phone_number
      t.string :cpf
      t.string :email

      t.timestamps
    end
  end
end
