# frozen_string_literal: true
module Tools
  class Acronym
    def make_acronym(str)
      str.scan(/\b\w/).join.upcase
    end
  end
end