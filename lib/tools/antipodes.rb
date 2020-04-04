
  class Antipodes
    def initialize(numbers)
      @numbers = numbers
    end

    def antipodes_average
      sumarry.map { |i| i / 2 }
    end

    private

    def odd_to_even
      @numbers.size.odd? ? even : @numbers
    end

    def split_array
      @left, @right = odd_to_even.each_slice((odd_to_even.size / 2.0).round).to_a
    end

    def left
      @left
    end

    def right
      @right.reverse
    end

    def even
      @numbers.slice!(@numbers.size / 2)
    end

    def sumarry
      [left, right].transpose.map(&:sum)
    end
  end

