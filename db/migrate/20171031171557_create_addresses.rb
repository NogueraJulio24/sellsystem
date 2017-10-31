class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :description
      t.references :city, foreign_key: true
      t.float :longitute
      t.float :latitude

      t.timestamps
    end
  end
end
