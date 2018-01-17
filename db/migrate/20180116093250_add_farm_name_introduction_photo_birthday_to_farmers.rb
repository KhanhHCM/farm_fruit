class AddFarmNameIntroductionPhotoBirthdayToFarmers < ActiveRecord::Migration[5.1]
  def change
  	add_reference :farmers, :farm, index: true
  	add_column :farmers, :farmer_name, :string
  	add_column :farmers, :introduction, :text
  	add_column :farmers, :farmer_photo, :string
  	add_column :farmers, :farmer_bith, :date
  end
end
