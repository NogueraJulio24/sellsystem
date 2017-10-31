class CreateSellDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :sell_details do |t|
      t.references :product, foreign_key: true
      t.references :sell, foreign_key: true
      t.integer :cant

      t.timestamps
    end
  end
end
