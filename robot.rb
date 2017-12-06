class Robot
  attr_accessor :board
  attr_accessor :position

  def initialize(rows, columns)
    @board = Board.new(rows, columns)
    @board.robot = self
    @position = {
      x: nil,
      y: nil,
      cardinal: nil
    }
  end

  def valid_move?(x, y, cardinal)
    if !(x <= @board.rows && y <= @board.cols)
      return false
    end

    return true
  end

  def place(x, y, cardinal)
    valid = valid_move?(x, y, cardinal)

    if !valid
      puts "Invalid move"
      return false
    end

    #clear previous position
    if @position[:x] && @position[:y]
      @board.board[@board.cols - @position[:y]][@position[:x] - 1] = 0
    end


    #update position
    @position = {
      x: x,
      y: y,
      cardinal: cardinal
    }

    @board.board[@board.cols - @position[:y]][@position[:x] - 1] = 1

    @position = {
      x: x,
      y: y,
      cardinal: cardinal
    }

    return true
  end

  def move

    print @position
    x = @position[:x]
    y = @position[:y]
    cardinal = @position[:cardinal]

    if @position[:cardinal] == "west"
      if x - 1 < 1
        puts "Invalid move: at west edge"
        return false
      end

      return self.place(x - 1, y, cardinal)
    elsif @position[:cardinal] == "east"
      if x + 1 > self.board.rows
        puts "Invalid move: at east edge"
        return false
      end

      return self.place(x + 1, y, cardinal)
    elsif @position[:cardinal] == "south"
      if y - 1 < 1
        puts "Invalid move: at south edge"
        return false
      end

      return self.place(x, y - 1, cardinal)
    elsif @position[:cardinal] == "north"
      if y + 1 > self.board.cols
        puts "Invalid move: at north edge"
        return false
      end

      return self.place(x, y + 1, cardinal)
    end

    return false
  end

  def cardinal_left
    new_cardinal = nil

    case @position[:cardinal]
    when "west"
      new_cardinal = "south"
    when "east"
      new_cardinal = "north"
    when "north"
      new_cardinal = "west"
    when "south"
      new_cardinal = "east"
    end

    self.place(@position[:x], @position[:y], new_cardinal)
  end

  def cardinal_right
    new_cardinal = nil

    case @position[:cardinal]
    when "west"
      new_cardinal = "north"
    when "east"
      new_cardinal = "south"
    when "north"
      new_cardinal = "east"
    when "south"
      new_cardinal = "west"
    end

    self.place(@position[:x], @position[:y], new_cardinal)
  end

  def report
  end
end
