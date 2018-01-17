class CreateFruitMasterFarms < ActiveRecord::Migration[5.1]
  def change
    create_table :fruit_master_farms do |t|
      t.references :fruit_master, foreign_key: true
      t.references :farm, foreign_key: true
      t.string :title
      t.text :detal
      t.string :fruit_photo
      t.string :fruit_photo1
      t.string :fruit_photo2
      t.string :fruit_photo3
      t.string :price
      t.string :sale_off
      t.date :expiration_date
      t.boolean :enable_flag

      t.timestamps
    end
  end
end
