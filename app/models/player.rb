class Player < ApplicationRecord
	def korean?
		nationality == "Korea"
	end
end
