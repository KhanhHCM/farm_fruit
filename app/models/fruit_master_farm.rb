class FruitMasterFarm < ApplicationRecord
  belongs_to :fruit_master
  belongs_to :farm
  has_many :orders
  has_many :users, through :orders
end
