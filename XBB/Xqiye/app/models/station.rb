class Station < ApplicationRecord
	has_and_belongs_to_many :couriers
	has_and_belongs_to_many :factories

	belongs_to :region
end
