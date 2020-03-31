# frozen_string_literal: true

# Creating random names to robots
class Robot
  def initialize
    @list = []
  end

  def add_name
    @list << generate_name
  end

  def forget
    @list.uniq
  end

  private

  def alphabet
    ('A'..'Z').to_a.sample(2)
  end

  def numbers
    (1..9).to_a.sample(3)
  end

  def generate_name
    (alphabet + numbers).join
  end

  def find_duplicates
    @list.select { |d| @list.count(d) > 1 }
  end

end
