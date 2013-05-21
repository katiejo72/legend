module Legend
  class Player
  	def initialize
  		@command_list = [:look,:exit]
  	end

  	def look
  		"You are in a room.  There is a candle on a table in the corner.  There are exits to the North and East."
  	end

  	def run_command(command)
  		if @command_list.include? command
  			return (send command)
  		else
  			return "You can't do that, noob. Allons-y!"
  		end
  	end
  end
end