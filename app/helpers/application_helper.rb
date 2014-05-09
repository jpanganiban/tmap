module ApplicationHelper
	def display_tag(tag)
		if tag.nil?
			"&nbsp;".html_safe
		elsif tag.kind_of?(Array)			
			tag.join(",") 
		else
			tag
		end
	end
end
