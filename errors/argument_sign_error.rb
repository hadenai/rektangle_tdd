class ArgumentSignError < ArgumentError
  def initialize(msg = nil)
    message = "Height or Width is either zero or negative."
    super(message)

  end
end
