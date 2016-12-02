require_relative "../lib/number_parser"

describe NumberParser do
  context "when reading a file of zeroes" do
    it "returns an array of zeroes" do
      parsed = NumberParser.parse "data/zeroes.txt"
      expect(parsed).to eq "000000000"
    end
  end
  context "when reading a file of ones" do
    it "returns an array of ones" do
      parsed = NumberParser.parse "data/ones.txt"
      expect(parsed).to eq "111111111"
    end
  end
  context "when reading a file of 123456789" do
    it "returns 123456789" do
      skip
      parsed = NumberParser.parse "data/123456789.txt"
      expect(parsed).to eq "123456789"
    end
  end
  context "when reading a file with two entries" do
    it "reads the entries"
  end
end
