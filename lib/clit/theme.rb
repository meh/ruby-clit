#--
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#++

require 'singleton'
require 'colorb'

class Clit::Theme
	include Singleton

	def functions
		methods - Object.instance_methods - [:functions]
	end

	def log (text)
		puts text
	end

	def info (text)
		puts text
	end

	def warn (text)
		puts text
	end

	def error (text)
		$stderr.puts text
	end
end
