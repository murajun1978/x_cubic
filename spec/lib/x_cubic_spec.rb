require 'cubic'

describe Cubic do 
  let(:cubic){Cubic.new(arg)}

  shared_examples_for "argument is Numerics" do |arg, collect|
    let(:arg){"#{arg}\n"}
    it "returns #{collect}" do
      expect(cubic.calculation).to eq collect
    end
  end

  describe "calculation" do
    it_should_behave_like "argument is Numerics", 2, 8
    it_should_behave_like "argument is Numerics", 10, 1000
    it_should_behave_like "argument is Numerics", "２", 8
    it_should_behave_like "argument is Numerics", "１０", 1000
  end

  context "when argument is e" do
    let(:arg){"e\n"}
    it "returns error" do
      expect{ cubic.calculation }.to raise_error
    end
  end
end
