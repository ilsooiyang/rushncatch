module PlayersHelper
def self_intro(player)
		"Hello! My name is #{player.name}. I'm from #{player.nationality}."
	end

	def find_pic(player)
		player.profile_pic.blank? ? image_tag("rnc.png") : image_tag("#{player.profile_pic}")
	end
	
end