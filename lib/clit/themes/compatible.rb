#--
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#++

Clit.define_theme :compatible do
	def info (text)
		super "#{?i.blue} #{text}"
	end

	def warn (text)
		super "#{?!.yellow} #{text}"
	end

	def error (text)
		super "#{?x.red} #{text}"
	end
end
