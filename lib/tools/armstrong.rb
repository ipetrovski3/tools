module Tools
  class Armstrong
    def initialize(int)
      @int = int
    end

    def check_armstrong
      return true if sum_all == @int

      false
    end

    def integer_to_array
      @int.to_s.chars.map(&:to_i)
    end

    def multiplier
      integer_to_array.size
    end

    def maths
      integer_to_array.map { |i| i**multiplier }
    end

    def sum_all
      maths.sum
    end
  end
end