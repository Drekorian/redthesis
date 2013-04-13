module ThesesHelper
	def thesis_status_label(thesis_status)
		case thesis_status
			when Thesis::Status[:available][:id] then
				raw("<span class=\"ink-label success\">#{Thesis::Status[:available][:string]}</span>")
			when Thesis::Status[:occupied][:id] then
				raw("<span class=\"ink-label warning\">#{Thesis::Status[:occupied][:string]}</span>")
			when Thesis::Status[:finished][:id] then
				raw("<span class=\"ink-label info\">#{Thesis::Status[:finished][:string]}</span>")
		end
	end

	def thesis_type_label(thesis_type)
		case thesis_type
			when Thesis::Type[:bachelor][:id] then
				raw("<span class=\"ink-label info\">#{Thesis::Type[:bachelor][:string]}</span>")
			when Thesis::Type[:master][:id] then
				raw("<span class=\"ink-label info\">#{Thesis::Type[:master][:string]}</span>")
			when Thesis::Type[:bachelor_or_master][:id] then
				raw("<span class=\"ink-label info\">#{Thesis::Type[:bachelor_or_master][:string]}</span>")
		end
	end

	def short_description(description)
		html = RedCloth.new(description).to_html()

		start_index = html.index(/<(p|ul|ol)/)
		end_index = 0
		length = 0

		case html[start_index + 1]
			when 'p' then
				length = 3
				end_index = html.index(/<\/p>/)
			when 'u' then
				length = 4
				end_index = html.index(/<\/ul>/)
			when 'o' then
				length = 4
				end_index = html.index(/<\/ol>/)
		end

		html[start_index..end_index + length]
	end
end
