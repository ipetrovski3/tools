module Tools
  class Raindrops
    def initialize(int)
      @int = int
    end

    def song
      str = ''
      str += 'Pling' if (@int % 3).zero?
      str += 'Plang' if (@int % 5).zero?
      str += 'Plong' if (@int % 7).zero?

      str.empty? ? @int.to_s : str
    end
  end
end
