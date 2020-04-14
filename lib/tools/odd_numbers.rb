module Tools
  class OddNumbers
    def initialize(arr)
      @arr = arr
    end

    def first_odd_integer
      if @arr.count < 2
        @arr.first
      else
        first_odd
      end
    end

    def odds_counter
      count_the_odds.size < 2 ? @arr : count_the_odds
    end

    private

    def first_odd
      count_the_odds.first
    end

    def array_to_hash
      @arr.tally
    end

    def count_the_odds
      array_to_hash.select { |_, v| v.odd? }.keys
    end
  end
end
