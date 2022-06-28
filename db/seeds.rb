# require 'memory_profiler'
# report = MemoryProfiler.report do
  
# end
# report.pretty_print

require 'benchmark/ips'

def generate_data(n)
  user = FactoryBot.create(:user)
  profile = FactoryBot.create(:profile, user: user)
  FactoryBot.create_list(:car, n, user: user)
end

Benchmark.ips do |x|
  x.config(time: 0, warmup: 0)

  x.report("user") do |times|
    users = FactoryBot.create_list(:user, 10)
    users.each do |user|
      FactoryBot.create(:profile, user: user)
    end
  end

  x.report("seed") do |times|
    generate_data(1000)
  end
end

  