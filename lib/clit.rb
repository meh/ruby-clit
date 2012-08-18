#--
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#++

class Clit < BasicObject
	autoload :Theme, 'clit/theme'

	def self.themes
		@themes ||= {}
	end

	def self.define_theme (name, &block)
		if @themes[name]
			raise ArgumentError, "#{name} already exists"
		end

		@themes[name] = ::Class.new(::Clit::Theme, &block).instance
	end

	def self.theme (name)
		unless themes[name]
			require "clit/themes/#{name}"
		end

		unless themes[name]
			raise ::ArgumentError, "#{name} theme not found"
		end

		themes[name]
	end

	def initialize (name = :default)
		theme(name)
	end

	def theme (name = nil)
		name ? @theme = ::Clit.theme(name) : @theme
	end

	def respond_to_missing? (*args)
		@theme.respond_to?(*args)
	end

	def method_missing (id, *args, &block)
		if @theme.respond_to? id
			return @theme.__send__ id, *args, &block
		end

		super
	end
end

module Kernel
	def cli
		@clit ||= Clit.new
	end

	alias console cli
end

unless STDOUT.tty?
	ENV['NO_COLORS'] = 'true'
end
