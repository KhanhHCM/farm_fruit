class Order < ApplicationRecord
  belongs_to :fruit_master_farm
  belongs_to :user
end
