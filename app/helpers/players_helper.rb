module PlayersHelper

	def find_pic(player)
		player.profile_pic.blank? ? image_tag("rnc.png") : image_tag("#{player.profile_pic}")
	end
	
end