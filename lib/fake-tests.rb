class FakeTests
  def initialize
    @running = true
  end

  def run!
    while @running do
      print '.'
      sleep(1)
    end
  end
end
