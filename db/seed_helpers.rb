# frozen_string_literal: true

module SeedHelpers
  def say(message, subitem: false)
    if subitem
      puts "   -> #{message}"
    else
      puts "-- #{message}"
    end
  end

  def say_with_time(message)
    say(message)
    result = nil
    time = Benchmark.measure { result = yield }

    say(format("%.4fs", time.real), subitem: true)
    say("#{result} rows", subitem: true) if result.is_a?(Integer)

    result
  end
end
