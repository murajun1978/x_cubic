require 'cubic'

describe Cubic do 
  let(:cubic){Cubic.new(arg)}
  
  context "when argument is 2" do
    let(:arg){"2\n"}
    it "returns 8" do
      expect(cubic.calculation).to eq 8
    end
  end

  context "when argument is ２" do
    let(:arg){"２\n"}
    it "returns 8" do
      expect(cubic.calculation).to eq 8
    end
  end

  context "when argument is e" do
    let(:arg){"e\n"}
    it "returns error" do
      expect{ cubic.calculation }.to raise_error
    end
  end
end
