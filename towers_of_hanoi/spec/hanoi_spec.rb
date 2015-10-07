require "hanoi"

describe Game do
  let(:game) { Game.new }

  context "New Game" do
    it "initializes with 3 towers" do
      expect(game.towers.count).to eq(3)
    end

    it "initializes with 3 disks in order in the first column" do
      expect(game.towers.first).to eq([1,2,3])
    end

    it "initializes 2 empty columns after the first" do
      expect(game.towers[1] && game.towers[2]).to eq([nil, nil, nil])
    end

    it "renders the columns in the console" do
      expect(game.render).to eq(" |1|  | |  | | \n |2|  | |  | | \n |3|  | |  | | \n")
    end
    it "asks for an input from the player"
  end


  context "Player Input" do
    it ""
  end

  it "finishes when a tower is made in last column"
end
