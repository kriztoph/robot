#uncomment to watch a lot of moving and testing

require_relative 'robot'
require_relative 'board'

robot = Robot.new(5, 5)
puts "place 1,1"
robot.place(1, 1, "east")
robot.board.print_board()
puts robot.position
puts ""

puts "place 1,2"
robot.place(1, 2, "west")
robot.board.print_board()
puts robot.position
puts ""

puts "place 2, 2"
robot.place(2, 2, "west")
robot.board.print_board()
puts robot.position
puts ""

puts "place 1, 3"
robot.place(1, 3, "west")
robot.board.print_board()
puts robot.position
puts ""

puts "invalid: 6,6"
robot.place(6, 6, "west")
robot.board.print_board()


puts "robot.cardinal_right()"
robot.cardinal_right()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.cardinal_right()"
robot.cardinal_right()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.cardinal_right()"
robot.cardinal_right()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.move()"
robot.move()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.move()"
robot.move()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.move()"
robot.move()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.cardinal_right()"
robot.cardinal_right()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.cardinal_right()"
robot.cardinal_right()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.move()"
robot.move()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.move()"
robot.move()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.move()"
robot.move()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.move()"
robot.move()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.move()"
robot.move()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.cardinal_left()"
robot.cardinal_left()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.move()"
robot.move()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.move()"
robot.move()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.cardinal_right()"
robot.cardinal_right()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.cardinal_right()"
robot.cardinal_right()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.move()"
robot.move()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.move()"
robot.move()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.move()"
robot.move()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.move()"
robot.move()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.move()"
robot.move()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.cardinal_right()"
robot.cardinal_right()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.cardinal_right()"
robot.cardinal_right()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.move()"
robot.move()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.move()"
robot.move()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.move()"
robot.move()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.move()"
robot.move()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.move()"
robot.move()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.cardinal_right()"
robot.cardinal_right()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.cardinal_right()"
robot.cardinal_right()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.move()"
robot.move()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.cardinal_right()"
robot.cardinal_right()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.move()"
robot.move()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.move()"
robot.move()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.move()"
robot.move()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.move()"
robot.move()
puts robot.position
robot.board.print_board()
puts ""

puts "robot.move()"
robot.move()
puts robot.position
robot.board.print_board()
puts ""

puts "place 3, 3"
robot.place(3, 3, "south")
robot.board.print_board()
puts robot.position
puts ""
robot.move()
robot.move()
robot.move()
