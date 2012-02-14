#require "fuzzytime/version"

module Fuzzytime

  def self.fuzzy_time(t = Time.now)

    min = t.min
    hour = t.hour

    case min
    when 0
    when 1..30
      rel = "past"
      min = min
    when 31..59
      rel = "til"
      min = 60 - min
      hour = (hour + 1) % 24
    end
    
    min = "quarter" if min == 15
    min = "half" if min == 30

    case hour
    when 0
      hour = "midnight"
    when 12
      hour = "noon"
    else
      hour = hour % 12
      suffix = t.min.zero? && hour.is_a?(Integer) ? "o'clock" : ""
    end

    "#{min} #{rel} #{hour} #{suffix}".strip
  end
end
