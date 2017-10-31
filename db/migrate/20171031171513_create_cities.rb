class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.string :desciption
      t.references :department

      t.timestamps
    end
  end
end
