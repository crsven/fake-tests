class FakeTests
  def initialize
    @running = true
  end

  def run!
    output_header
    while @running do
      print '.'
      sleep(1)
    end
  end

  def output_header
    puts 'rails            11.720000   2.300000  14.020000 ( 16.012029)'
    sleep(2)
    puts 'support           0.670000   0.100000   0.770000 (  3.675325)'
    sleep(2)
  end
end
