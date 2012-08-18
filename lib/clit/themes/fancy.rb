# encoding: utf-8
#--
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#++

Clit.define_theme :fancy do
	def info (text)
		puts "#{?ℹ.blue} #{text}"
	end

	def warn (text)
		puts "#{?⚠.yellow} #{text}"
	end

	def error (text)
		puts "#{?❗.red} #{text}"
	end

	def success (text)
		puts "#{?✔.green} #{text}"
	end

	def failure (text)
		puts "#{?✘.red} #{text}"
	end

	def separator
		puts ('─' * TermInfo.screen_size[1]).black.bold
	end
end
