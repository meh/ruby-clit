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
require 'terminfo'

class Clit::Theme
	include Singleton

	attr_reader :name, :indentation

	def initialize
		@indentation = 0
	end

	def functions
		methods - Object.instance_methods - Clit::Theme.instance_methods
	end

	def new_line
		print "\n"
	end

	def indent (size = 4)
		@indentation += size

		yield
	ensure
		@indentation -= size
	end
end
