class ArgumentTooBigError < ArgumentError
  def initialize(msg = nil)
    message = "Height or Width is too long!!"
    super(message)
  end
end
