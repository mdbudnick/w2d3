require 'array_exercises'

describe Array do


  describe "#my_uniq" do
    let(:arr) { [1,1,2,2] }

    it "#my_uniq returns an array of uniq values" do
      expect(arr.my_uniq).to eq(arr.uniq)
    end

  end

  describe "#two_sum" do
    let(:arr) { [-1, 0, 2, -2, 1] }

    
  end

end
