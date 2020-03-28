# frozen_string_literal: true

require 'tools/version'
require 'raindrops'
require 'isogram'
require 'armstrong'
require 'acronyms'
require 'allergies'

module Tools
  class Luhn
    def initialize(str)
      @striped = str.delete(' ')
    end

    def valid?
      return false if valid_checks == false

      true
    end

    private

    def rev_arr
      @striped.reverse.chars
    end

    def every_first_array
      indexes.map { |i| rev_arr[i].to_i }
    end

    def every_second_array
      indexes(1).map { |i| rev_arr[i].to_i }
    end

    def indexes(ind = 0)
      (ind..@striped.size - 1).step(2)
    end

    def multi
      every_second_array.map { |i| rule(i) }
    end

    def rule(num)
      multi = num * 2
      if multi > 9
        multi - 9
      else
        multi
      end
    end

    def sum_all
      (every_first_array + multi).sum
    end

    def divided_by_ten
      (sum_all % 10).zero?
    end

    def valid_checks
      return false if rev_arr.length <= 1 || /\D/.match?(@striped)
      return false unless divided_by_ten == true
    end
  end
end
