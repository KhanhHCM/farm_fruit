class Farm < ApplicationRecord
  belongs_to :place
  has_many :farmers
  has_many :farm_companies
  has_many :companies, through: :farm_company
  has_many :fruit_master_farms
  has_many :orders, through: :fruit_master_farm
  has_and_belongs_to_many :fruit_masters
end
