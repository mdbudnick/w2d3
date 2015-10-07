class Game
  attr_accessor :towers
  attr_reader :towers_hash

  def initialize
    @towers = Array.new(3) { Array.new(3) }
    towers[0] = [1,2,3]
    @towers_hash = { 'A' => 0, 'B' => 1, 'C' => 2 }
    #self.play
  end

  def render
    output = ""
    (0..2).each do |idx|
      towers.each do |tower|
        if tower[idx].nil?
          output += " | | "
        else
          output += " |#{tower[idx]}| "
        end
      end
      output += "\n"
    end
    output += "  A    B    C  \n"

    print output
    output
  end

  def play
    until won?
      render
      puts "Move disk from where to where? ex. 'AB' "
      input = gets.chomp
      parse(input)
    end
  end

  def parse(input)
    first, second = input.split("")
    first = towers_hash[first.upcase]
    second = towers_hash[second.upcase]
    move(first, second)
  end

  def move(first, second)
    move_disk_idx = towers[first].find_index { |el| el.is_a?(Fixnum) }
    move_disk = towers[first][move_disk_idx]
    towers[second].each_with_index do |el, index|
      next if el.nil? unless index == 2
      if (el.nil? && index == 2) || move_disk < el
        towers[second][index-1] = move_disk unless el.nil?
        towers[second][index] = move_disk unless !el.nil?
        towers[first][move_disk_idx] = nil
        break
      end
      return if move_disk > el
    end

    towers
  end

  def won?
    return true if towers[2] == [1, 2, 3]
    false
  end


end
