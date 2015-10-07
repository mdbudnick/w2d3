class Game
  attr_accessor :towers

  def initialize
    @towers = Array.new(3) { Array.new(3) }
    towers[0] = [1,2,3]
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
    print output
    output
  end

end
