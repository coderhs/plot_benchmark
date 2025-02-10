module PlotBenchmark
  class BarGraph
    def initialize(results)
      @results = results
      @user = {}
      @system = {}
      @total = {}
      @real = {}
      calculate_values
    end

    attr_accessor :results, :user, :system, :total, :real

    def calculate_values
      results.each do |result|
        @user[result.label] = result.utime
        @system[result.label] = result.stime
        @total[result.label] = result.total
        @real[result.label] = result.real
      end
    end

    def render
      UnicodePlot.barplot(data: user, title: "User").render
      UnicodePlot.barplot(data: system, title: "System").render
      UnicodePlot.barplot(data: total, title: "total").render
      UnicodePlot.barplot(data: real, title: "Real").render
    end

    def self.render(results)
      new(results).render
    end
  end
end
