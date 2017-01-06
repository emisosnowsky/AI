module ApplicationHelper

	def gravatar_for(category, options = { size: 80})
		gravatar_id = Digest::MD5::hexdigest(category.category_name.downcase)
		size = options[:size]
		gravatar_url = "http://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
		image_tag(gravatar_url, alt: category.category_name, class: "gravatar")
	end
end
