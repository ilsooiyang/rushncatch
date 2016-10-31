module UsersHelper

	def find_pic(user)
		image_tag("rnc.png")
		# url = "https://secure.gravatar.com/avatar/#{user.gravatar_id}"
		# image_tag(url, alt:user.name)
	end

end
