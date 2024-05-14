class StringCalculator
  def self.add(input)
    if input.empty?
      0
    else
      delimiter = ","
      if input.start_with?("//")
        delimiter = input[2]
        input = input[4..-1]
      end

      if input.include?(",\n")
        raise ArgumentError, "Invalid input: '#{input}'"
      end

      numbers = input.split(/#{delimiter}|\n/).map(&:to_i)

      negatives = numbers.select { |num| num < 0 }
      if negatives.any?
        raise "Negative numbers not allowed: #{negatives.join(",")}"
      end

      sum = numbers.reject { |num| num < 0 }.sum
    end
  end
end