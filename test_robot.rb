require_relative 'robot'
require_relative 'board'
require "test/unit"

class TestRobot < Test::Unit::TestCase

  def test_valid_placement1
    robot = Robot.new(5, 5)
    assert_equal(robot.place(1, 1, "east"), true)
  end

  def test_valid_placement2
    robot = Robot.new(5, 5)
    assert_equal(robot.place(1, 4, "east"), true)
  end

  def test_invalid_placement1
    robot = Robot.new(5, 5)
    assert_equal(robot.place(1, 6, "east"), false)
  end

  def test_invalid_placement2
    robot = Robot.new(5, 5)
    assert_equal(robot.place(6, 3, "east"), false)
  end

  def test_cardinal_right
    robot = Robot.new(5, 5)
    robot.place(3, 3, "east")
    assert_equal(robot.position[:cardinal], "east")
    robot.cardinal_right
    assert_equal(robot.position[:cardinal], "south")
    robot.cardinal_right
    assert_equal(robot.position[:cardinal], "west")
    robot.cardinal_right
    assert_equal(robot.position[:cardinal], "north")
  end

  def test_cardinal_left
    robot = Robot.new(5, 5)
    robot.place(3, 3, "south")
    assert_equal(robot.position[:cardinal], "south")
    robot.cardinal_left
    assert_equal(robot.position[:cardinal], "east")
    robot.cardinal_left
    assert_equal(robot.position[:cardinal], "north")
    robot.cardinal_right
    assert_equal(robot.position[:cardinal], "east")
    robot.cardinal_right
    assert_equal(robot.position[:cardinal], "south")
  end

  def test_south_edge
    robot = Robot.new(5, 5)
    robot.place(3, 3, "south")

    robot.board.print_board

    assert_equal(robot.move, true)
    # puts robot.position
    assert_equal(robot.move, true)
    # puts robot.position

    assert_equal(robot.move, false)
    # puts robot.position
  end

  def test_north_edge
    robot = Robot.new(5, 5)
    robot.place(3, 3, "north")

    robot.board.print_board

    assert_equal(robot.move, true)
    # puts robot.position
    assert_equal(robot.move, true)
    # puts robot.position
    assert_equal(robot.move, false)
    # puts robot.position
  end

  def test_east_edge
    robot = Robot.new(5, 5)
    robot.place(3, 3, "east")

    robot.board.print_board

    assert_equal(robot.move, true)
    # puts robot.position
    assert_equal(robot.move, true)
    # puts robot.position
    assert_equal(robot.move, false)
    # puts robot.position
  end

  def test_west_edge
    robot = Robot.new(5, 5)
    robot.place(3, 3, "west")

    robot.board.print_board

    assert_equal(robot.move, true)
    # puts robot.position
    assert_equal(robot.move, true)
    # puts robot.position
    assert_equal(robot.move, false)
    # puts robot.position
  end
end
