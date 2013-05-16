require "legend/client/look"

module Legend
  class Client
  	def initialize
  		@player = Player.new
  	end

  	def description
  		"You are in a room.  There is a candle on a table in the corner.  There are exits to the North and East."
  	end

  	def run
  		def parse(command_string, args={})
	      commands = command_string.split
	      command, *rest = commands
	      [command.downcase.to_sym, rest]
	    end

  		def handle_input(input, opts={})
			  command, args = parse input
			
			  puts( @player.run_command( command ))
			end
			
			repl = -> prompt do
			  print prompt
			  handle_input gets.chomp!
			end
			
			loop do
			  repl[">> "]
			end
		end
  end
end