class CreateFarmCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :farm_companies do |t|
      t.references :farm, foreign_key: true
      t.references :company, foreign_key: true
      t.datetime :delivery_date

      t.timestamps
    end
  end
end
