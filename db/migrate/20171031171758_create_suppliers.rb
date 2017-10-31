class CreateSuppliers < ActiveRecord::Migration[5.1]
  def change
    create_table :suppliers do |t|
      t.string :description
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
