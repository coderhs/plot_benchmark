
module PlotBenchmark
  # Capture any number of arguments (*args) and the block (&block)
  def self.measure(*args, &block)
    # You can pick which constants to use; for illustration:

    results = ::Benchmark.benchmark(*args, &block)

    user, system, total, real = {}, {}, {}, {}
    results.each do |result|
      user[result.label] = result.utime
      system[result.label] = result.stime
      total[result.label] = result.total
      real[result.label] = result.real
    end

    UnicodePlot.barplot(data: user, title: "User").render
    UnicodePlot.barplot(data: system, title: "System").render
    UnicodePlot.barplot(data: total, title: "total").render
    UnicodePlot.barplot(data: real, title: "Real").render
  end
end
