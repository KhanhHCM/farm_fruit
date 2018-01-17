class CreateFruitMasters < ActiveRecord::Migration[5.1]
  def change
    create_table :fruit_masters do |t|
      t.string :fruit_name

      t.timestamps
    end
  end
end
