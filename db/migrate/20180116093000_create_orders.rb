class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :fruit_master, foreign_key: true
      t.references :user, foreign_key: true
      t.datetime :delirevy_date

      t.timestamps
    end
  end
end
