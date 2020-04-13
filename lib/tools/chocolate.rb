module Tools
  class Chocolate
    def initialize(eater_one, eater_two)
      @eater_one = eater_one
      @eater_two = eater_two
    end

    def fairness?
      first_person == second_person
    end

    private

    def first_person
      pieces_eaten(@eater_one)
    end

    def second_person
      pieces_eaten(@eater_two)
    end

    def pieces_eaten(eater)
      eater.map { |a, b| a * b }.sum
    end
  end
end
