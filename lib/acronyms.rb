# frozen_string_literal: true

class Acronym
  def make_acronym(str)
    str.scan(/\b\w/).join.upcase
  end
end
