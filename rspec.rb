class Expect
  def initialize(value)
    @value = value
  end

  def to_equal(x)
    if @value == x
      return "Test passes! :)"
    else
      return "Test fails! D:"
    end
  end
end

puts Expect.new(true).to_equal(false)