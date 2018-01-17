class Farm < ApplicationRecord
  belongs_to :place
  has_many :farmers
  has_many :farm_companies
  has_many :companies, through :farm_company
  has_many :fruit_master_farms
  has_many :orders, through :fruit_master_farm
  has_many :fruit_masters, through :fruit_master_farms
end
