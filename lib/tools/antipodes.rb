
module Tools
  class Antipodes
    def initialize(numbers)
      @numbers = numbers
    end

    attr_reader :left

    def antipodes_average
      @numbers.size == 1 ? @numbers : divide_first_and_second
    end

    private

    def odd_to_even
      @numbers.size.odd? ? even : @numbers
    end

    def split_array
      @left, @right = odd_to_even.each_slice((odd_to_even.size / 2.0).round).to_a
    end

    def right
      @right.reverse
    end

    def even
      @numbers.slice!(@numbers.size / 2)
      @numbers
    end

    def sumarry
      split_array
      [left, right].transpose.map(&:sum)
    end

    def divide_first_and_second
      sumarry.map { |i| i / 2.0 }
    end
  end
end

