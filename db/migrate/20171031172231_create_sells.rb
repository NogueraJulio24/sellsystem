class CreateSells < ActiveRecord::Migration[5.1]
  def change
    create_table :sells do |t|
      t.references :client, foreign_key: true
      t.date :sell_date

      t.timestamps
    end
  end
end
