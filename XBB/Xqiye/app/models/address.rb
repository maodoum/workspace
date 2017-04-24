class Address < ApplicationRecord
	belongs_to:addressowner,polymorphic: true
	def to_s
		self.address
	end
end
