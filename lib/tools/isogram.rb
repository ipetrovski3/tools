module Tools
  class Isogram
    def initialize(str)
      @str = str
    end

    def isogram_check
      if letter_count > 1
        'Not Isogram'
      elsif letter_count < 1
        'Isogram'
      end
    end

    def letter_count
      hyphens_removed = @str.gsub(/[-, ,]/, '')
      hyphens_removed.chars.count { |c| @str.count(c) > 1 }
    end
  end
end
