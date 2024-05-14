require "string_calculator"

describe StringCalculator do
  describe ".add" do
    context "given an empty string" do
      it "returns zero" do
        expect(StringCalculator.add("")).to eq(0)
      end
    end
  end

  describe ".add" do
    context "given '4'" do
      it "returns 4" do
        expect(StringCalculator.add("4")).to eql(4)
      end
    end

    context "given '10'" do
      it "returns 10" do
        expect(StringCalculator.add("10")).to eql(10)
      end
    end

    context "two numbers" do
      context "given '4,4'" do
        it "returns 8" do
          expect(StringCalculator.add("4,4")).to eql(8)
        end
      end

      context "given '25,75'" do
        it "returns 100" do
          expect(StringCalculator.add("25,75")).to eql(100)
        end
      end
    end
  end
end