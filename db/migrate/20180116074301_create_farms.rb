class CreateFarms < ActiveRecord::Migration[5.1]
  def change
    create_table :farms do |t|
      t.references :place, foreign_key: true
      t.string :farm_name
      t.text :introduction
      t.string :farm_photo

      t.timestamps
    end
  end
end
