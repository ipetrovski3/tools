module Tools
  class Chocolate
    def initialize(eater_one, eater_two)
      @eater_one = eater_one
      @eater_two = eater_two
    end

    def fairness?
      return true if first_person == second_person
    end

    private

    # tuka pravam sprotivno od DRY.....
    def first_person
      @eater_one.map { |a, b| a * b }.sum
    end

    def second_person
      @eater_two.map { |a, b| a * b }.sum
    end
  end
end