module Tools
  class OddNumbers
    def initialize(num)
      @num = num.sort
    end

    def first_odd_integer
      if @num.count < 2
        @num.join.to_i
      else
        first_odd
      end
    end

    def odds_counter
      count_the_odds.size < 2 ? @num : count_the_odds
    end

    private

    def first_odd
      odd_integers.first
    end

    def odd_integers
      @num.select(&:odd?)
    end

    def odd_integers_to_hash
      odd_integers.tally
    end

    def count_the_odds
      odd_integers_to_hash.select { |_, v| v.odd? }.keys
    end
  end
end
