class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.references :supplier, foreign_key: true
      t.float :purchase_price
      t.boolean :status
      t.float :cant
      t.references :sell_price, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
