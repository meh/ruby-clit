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

	attr_reader :name

	def functions
		methods - Object.instance_methods - [:functions, :name]
	end

	def new_line
		print "\n"
	end
end
