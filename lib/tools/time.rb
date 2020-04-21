module Tools
  class TimeAdjust
    LIMITHOURS = 24
    LIMITMINSEC = 60
    def initialize(time, hrs, min, sec)
      @time = time.split(/:/)
      @hrs = hrs
      @min = min
      @sec = sec
    end

    def adjust_clock
      hours
      minutes
      seconds
      "#{hours}:#{minutes}:#{seconds}"
    end

    private

    def time_to_int
      @time.map(&:to_i)
    end

    def seconds
      secn = time_to_int[2] + @sec
      while secn >= LIMITMINSEC
        secn = (secn - LIMITMINSEC)
        @min += 1
      end
      '%02d' % secn
    end

    def minutes
      minn = time_to_int[1] + @min
      while minn >= LIMITMINSEC
        minn = (minn - LIMITMINSEC)
        @hrs += 1
      end
      '%02d' % minn
    end

    def hours
      hrsn = time_to_int[0] + @hrs
      while hrsn >= LIMITHOURS
        hrsn = (hrsn - LIMITHOURS)
      end
      '%02d' % hrsn
    end
  end
end
