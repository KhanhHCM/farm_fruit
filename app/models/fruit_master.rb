class FruitMaster < ApplicationRecord
	has_and_belongs_to_many :farms
end
