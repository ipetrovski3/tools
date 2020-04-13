module Tools
  class OddNumbers
    def initialize(num)
      @num = num.sort
    end

    def first_odd_integer
      odd_integers.first
    end

    def odds_counter
      odd_integers_to_hash.select { |_, v| v.odd? }.keys
    end

    private

    def odd_integers
      @num.select(&:odd?)
    end

    def odd_integers_to_hash
      odd_integers.tally
    end
  end
end
