class FakeTests
  def initialize(options={})
    @running = true
    @runtime = parse_to_seconds(options[:time]) if options[:time]
  end

  def run!
    @start_time = Time.now
    output_header
    while @running do
      print '.'
      sleep(1)
      check_time if @runtime
    end
  end

  private

  def stop
    @running = false
  end

  def parse_to_seconds(time)
    time*60
  end

  def elapsed_time
    Time.now - @start_time
  end

  def check_time
    if elapsed_time > @runtime
      stop
    end
  end

  def output_header
    puts 'rails            11.720000   2.300000  14.020000 ( 16.012029)'
    sleep(2)
    puts 'support           0.670000   0.100000   0.770000 (  3.675325)'
    sleep(2)
  end
end
