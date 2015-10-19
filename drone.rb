class Drone

	def initialize(x,y,pos, lim_x, lim_y)
		@x = x
		@y = y
		@pos = pos
		@lim_x = lim_x
		@lim_y = lim_y
	end

	def move()
		case @pos
		when 'N'
			up
		when 'S'
			down
		when 'E'
			right
		when 'W'
			left
		else
			puts 'movimento invalido!'
		end
	end


	def turn_left()
		case @pos
		when 'N'
		set_pos('W')
		when 'S'
		set_pos('E')
		when 'E'
		set_pos('N')
		when 'W'
		set_pos('S')
		else
		puts 'movimento invalido'
		end
	end
				
	def turn_right()
		case @pos
		when 'N'
		set_pos('E')
		when 'S'
		set_pos('W')
		when 'E'
		set_pos('S')
		when 'W'
		set_pos('N')
		else
		puts 'movimento invalido'
		end
	end

	def up()
		if @y < @lim_y
			@y += 1
		end
	end

	def down()
		if @y > 0
			@y -= 1
		end
	end

	def left()
		if @x > 0
			@x -= 1
		end
	end

	def right()
		if @x < @lim_x
			@x += 1
		end
	end

	def get_lim
		@limx
	end

	def set_pos(pos)
		@pos = pos
	end

	def status
		puts "#{@x} #{@y} #{@pos}"
	end 

end 

class Island

	def initialize(line, column)
		@line = line
		@column = column
	end

	def create_drone(x, y, pos)
		@drone = Drone.new(x, y, pos, @line, @column)
	end

	def command(cmd)
		case cmd
		when 'D'
		@drone.turn_right
		when 'E'
		@drone.turn_left
		when 'M'
		@drone.move
		else
		puts 'movimento invalido'
		end
	end	

	def finish
		@drone.status
		@drone = nil
	end

end

ilha = Island.new(5, 5)
ilha.create_drone(1,2,'N')
ilha.command("E")
ilha.command('M')
ilha.command('E')
ilha.command('M')
ilha.command('E')
ilha.command('M')
ilha.command('E')
ilha.command('M')
ilha.command('M')
ilha.finish
ilha.create_drone(3,3,'E')
ilha.command('M')
ilha.command('M')
ilha.command('D')
ilha.command('M')
ilha.command('M')
ilha.command('D')
ilha.command('M')
ilha.command('D')
ilha.command('D')
ilha.command('M')
ilha.finish



