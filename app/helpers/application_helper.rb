module ApplicationHelper
	def edit_button(path, options = {})
		default_options = { class: 'ink-button info' }
		options = merge_options(default_options, options)

		link_to(
			raw('<span class="icon-edit"></span>'),
			path,
			options
		)
	end

	def remove_button(path, options = {})
		default_options = { method: 'delete', class: 'ink-button caution ', data: { confirm: t('delete.confirm') }}
		options = merge_options(default_options, options)

		link_to(
			raw('<span class="icon-remove"></span>'),
			path,
			options
		)
	end

	def back_button(caption, path)
		link_to(
			raw("<span class=\"icon-arrow-left\"></span> #{caption}"),
			path,
			{ class: 'ink-button' }
		)
	end

	def new_button(caption, path)
		link_to(
			raw("<span class=\"icon-plus\"></span> #{caption}"),
			path,
			{ class: 'ink-button success' }
		)
	end

private
	def merge_options(default_options, custom_options)
		custom_options.keys.each do |key|
			if default_options[key].nil?
				default_options[key] = custom_options[key]
			else
				default_options[key] += " #{custom_options[key]}"
			end
		end

		default_options
	end
end
