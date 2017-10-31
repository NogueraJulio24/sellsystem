class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :lastname
      t.string :document
      t.string :phone
      t.string :email
      t.string :smartphone
      t.references :address, foreign_key: true
      t.date :date_of_birth

      t.timestamps
    end
  end
end
