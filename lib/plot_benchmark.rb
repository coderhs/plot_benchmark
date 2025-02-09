# frozen_string_literal: true

require 'benchmark'
require 'unicode_plot'
include Benchmark
require_relative "plot_benchmark/benchmark/measure.rb"
require_relative "plot_benchmark/version"

module PlotBenchmark
  class Error < StandardError; end
  # Your code goes here...
end
