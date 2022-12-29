class Expect
  def initialize(value)
    @value = value
  end

  def to(comparison)
    if @value == comparison.compare(true)
      puts "Test passed! :)"
    else
      puts "Test failed! :("
    end
  end
end

class Equal
  def initialize(value)
    @value = value
  end

  def compare(comparison)
    if @value == comparison
      return true
    else
      return false
    end
  end
end

Expect.new(true).to(Equal.new(true)) # should output "Test passed! :)"
Expect.new(true).to(Equal.new(false)) # should output "Test failed! :("

# Helper methods which are closer to what real rspec looks like:

def expect(value)
  Expect.new(value)
end

def eq(value)
  Equal.new(value)
end

expect(true).to eq true # should output "Test passed! :)"