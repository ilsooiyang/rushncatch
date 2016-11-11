module ApplicationHelper
	def gravatar_id(user)
    gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
    default_url = "http://imgur.com/GxCWoX7"
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=500&r=g"
	end
	
  def bootstrap_class_for flash_type
    { success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-info" }[flash_type.to_sym] || flash_type.to_s
  end

  def flash_messages(opts = {})
    flash.each do |msg_type, message|
      concat(content_tag(:div, message, class: "alert alert-custom #{bootstrap_class_for(msg_type)} fade in") do 
              concat content_tag(:button, 'x', class: "close", data: { dismiss: 'alert' })
              concat message 
            end)
    end
    nil
  end
end