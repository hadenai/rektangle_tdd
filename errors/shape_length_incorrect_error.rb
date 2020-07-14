class ShapeLengthIncorrectError < ArgumentError
  def initialize(msg = nil)
    message = "Your shapes must be 1 caractere."
    super(message)
  end
end
