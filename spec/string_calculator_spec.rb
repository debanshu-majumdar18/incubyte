require "string_calculator"

describe StringCalculator do
  describe ".add" do
    context "given an empty string" do
      it "returns zero" do
        expect(StringCalculator.add("")).to eq(0)
      end
    end

    context "given a single number" do
      context "example: '4'" do
        it "returns 4" do
          expect(StringCalculator.add("4")).to eql(4)
        end
      end

      context "example: '10'" do
        it "returns 10" do
          expect(StringCalculator.add("10")).to eql(10)
        end
      end
    end

    context "given two numbers" do
      context "example: '4,4'" do
        it "returns 8" do
          expect(StringCalculator.add("4,4")).to eql(8)
        end
      end

      context "example: '25,75'" do
        it "returns 100" do
          expect(StringCalculator.add("25,75")).to eql(100)
        end
      end

      context "with newlines" do
        context "example: '1\n2,3'" do
          it "returns 6" do
            expect(StringCalculator.add("1\n2,3")).to eql(6)
          end
        end
      end
    end

    context "handling custom delimiters" do
      context "example: '//;\n1;2'" do
        it "returns 3" do
          expect(StringCalculator.add("//;\n1;2")).to eql(3)
        end
      end
    end

    context "invalid input with a comma followed by newline" do
      context "example: '1,\n'" do
        it "raises an ArgumentError" do
          expect { StringCalculator.add("1,\n") }.to raise_error(ArgumentError)
        end
      end
    end
  end
end
