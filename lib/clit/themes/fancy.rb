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
		puts "#{?✇.yellow} #{text}"
	end

	def error (text)
		puts "#{?⚠.red} #{text}"
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
	
	def waiting (text)
        puts "#{?☕.white} #{text}"
	end

    def in_frame(text, width=0)

      text.each_line { |line|
        width = line.length if line.length >= width
      }

      print "┌"
      (width+1).times { print "─" }
      puts "┐"
      text.each_line { |line|

        print "│ " + line.tr("\n","")
        (width-line.tr("\n","").length).times { print " " }
        print "│"
        puts
      }
      print "└"
      (width+1).times { print "─" }
      print "┘"
      puts

    end
	
    def draw_line_after(text, width=0)
      
      text.each_line { |line|
        width = line.length if line.length >= width
      }
      
      puts text
      (width+1).times do
      print "─"
      end
      puts
      
    end
    
    def with_bullets(array)
      array.each do |i|
        puts "• " + i
      end
    end
    
    def tree_list(array)
      puts "│"
      (array.length-1).times do |i|
        puts "├── " + array[i]
      end
      puts "└── " + array.last
    end
    
    def with_arrows(hash)
      hash.each do |key, value|
        puts "#{key} → #{value}"
      end
    end

end
