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
		puts "#{?i.blue} #{text}"
	end

	def warn (text)
		puts "#{?*.yellow} #{text}"
	end

	def error (text)
		puts "#{?!.red} #{text}"
	end

	def success (text)
		puts "#{?+.green} #{text}"
	end

	def failure (text)
		puts "#{?-.red} #{text}"
	end

	def separator
		puts ('-' * TermInfo.screen_size[1]).black.bold
	end
	
	def waiting (text)
		puts "#{?~.white.bold} #{text}"
	end

	def in_frame(text, width=0)
		text.each_line { |line|
			width = line.length if line.length >= width
		}

		print "+"
		(width+1).times { print "-" }
		puts "+"  
		text.each_line { |line| 

			print "| " + line.tr("\n","")
			(width-line.tr("\n","").length).times { print " " }
			print "|" 
			puts
		}
		print "+"
		(width+1).times { print "-" }
		print "+"
		puts

	end


	def draw_line_after(text, width=0)
		text.each_line { |line|
			width = line.length if line.length >= width
		}

		puts text
		(width+1).times { print "-" }
		puts

	end

	def with_bullets(array)
		array.each { |i|
			puts "* " + i
		}
	end

	def tree_list(array)
		puts "|"
		(array.length-1).times { |i|
			puts "+-- " + array[i]
		}
		puts "+-- " + array.last
	end

	def with_arrows(hash)
		hash.each { |key, value|
			puts "#{key} -> #{value}"
		}
	end
	
	def split_view(text1, text2)
		width = ( TermInfo.screen_size[1] / 2 ) - 2
		string1_slices = text1.scan(/.{1,#{width}}/)
		string2_slices = text2.scan(/.{1,#{width}}/)

		if string1_slices.size > string2_slices.size
			(string1_slices.size - string2_slices.size).times { string2_slices.push "" }
		elsif string2_slices.size > string1_slices.size
			(string2_slices.size - string1_slices.size).times { string1_slices.push "" }
		end    

		[string1_slices.size, string2_slices.size].max.times { |i| 
		
			print string1_slices[i]
			(width - string1_slices[i].size).times {print " "} if (string1_slices[i].size < width)

			print "  |  "

			print string2_slices[i]
			(width - string1_slices[i].size).times {print " "} if (string2_slices[i].size < width)

			puts
		}
	end

end
