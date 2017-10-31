class CreateSellPrices < ActiveRecord::Migration[5.1]
  def change
    create_table :sell_prices do |t|
      t.float :price
      t.float :total
      t.integer :cant

      t.timestamps
    end
  end
end
