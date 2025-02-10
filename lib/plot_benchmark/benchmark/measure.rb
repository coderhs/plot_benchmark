module PlotBenchmark
  # Capture any number of arguments (*args) and the block (&block)
  def self.measure(*args, &block)
    # You can pick which constants to use; for illustration:

    results = ::Benchmark.benchmark(*args, &block)
    PlotBenchmark::BarGraph.render(results)
    results
  end
end
