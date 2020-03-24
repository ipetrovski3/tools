# frozen_string_literal: true

require 'tools/version'
require 'raindrops'
require 'isogram'
require 'armstrong'

module Tools
  class Luhn
    def initialize(str)
      @str = str
    end

    def valid?
      return false if valid_checks == false

      true
    end

    private

    def striped
      @str.delete(' ')
    end

    def rev_arr
      striped.reverse.chars
    end

    def every_first_array
      efa = (0..rev_arr.size - 1).step(2)
      efa.map { |i| rev_arr[i] }
    end

    def every_second_array
      esa = (1..rev_arr.size - 1).step(2)
      esa.map { |i| rev_arr[i] }
    end

    def str_to_int1
      every_first_array.map(&:to_i)
    end

    def str_to_int2
      every_second_array.map(&:to_i)
    end

    def multi
      str_to_int2.map { |i| rule(i) }
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
      str_to_int1 + multi
    end

    def sumall
      sum_all.sum
    end

    def divided_by_ten
      (sumall % 10).zero?
    end

    def valid_checks
      return false if rev_arr.length <= 1
      return false unless @str.scan(/[!,$,&,#,-,:,a..z]/).empty?
      return false unless divided_by_ten == true
    end
  end
end
