class Company < ApplicationRecord
	has_many :farm_companies
	has_many :farms, through: :farm_companies
end
