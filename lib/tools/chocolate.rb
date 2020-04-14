module Tools
  class Chocolate
    def initialize(eater_one, eater_two)
      @eater_one = eater_one
      @eater_two = eater_two
    end

    def fairness?
      pieces_eaten(@eater_one) == pieces_eaten(@eater_two)
    end

    private

    def pieces_eaten(eater)
      eater.map { |a, b| a * b }.sum
    end
  end
end
