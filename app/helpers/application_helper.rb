module ApplicationHelper

	def link_to_icon(icon_name, url_or_object, data_options={})
		# url_options = {}
		link_to(image_tag("icons/#{icon_name}.png", title: data_options[:title]),
		url_or_object,
		class: "icon #{icon_name}",
		data: data_options[:data] )
	end

	def dom_class_first(object, array)
		if (object == array.first)
			return "first"
		end
		nil
	end

end
