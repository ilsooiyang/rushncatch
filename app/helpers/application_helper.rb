module ApplicationHelper
	def gravatar_id(user)
    gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
    default_url = "http://imgur.com/GxCWoX7"
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=500&r=g"
	end
end
