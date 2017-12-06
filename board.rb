class Board
  attr_accessor :rows
  attr_accessor :cols
  attr_accessor :board
  attr_accessor :robot

  def initialize(rows, cols)
    @rows = rows
    @cols = cols
    @board = []

    @rows.times do
      row = []
      @cols.times do
        row.push(0)
      end

      @board.push(row)
    end

    @board = @board
  end

  def print_board
    cardinal = self.robot.position[:cardinal]

    @board.each do |row|
      row.each do |unit|
        if unit == 0
          print "0 "
        else
          case cardinal
          when "north"
            print "N "
          when "south"
            print "S "
          when "east"
            print "E "
          when "west"
            print "W "
          else
            print "0"
          end
        end

      end

      puts ""
    end
  end
end
