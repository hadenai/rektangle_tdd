require_relative './rektangle/rektangle'
Dir[File.dirname(__FILE__) + '/errors/*.rb'].each{ |file| require file }

#check argument
begin
  width = ARGV[0].to_i
  height = ARGV[1].to_i
  if width < 1 || height < 1
    raise ArgumentSignError
  end
  if width > 9000 || height > 9000
    raise ArgumentTooBigError
  end
  shapes = ARGV[2..6]
  shapes.each do |shape|
    raise ShapeLengthIncorrectError if shape.length != 1
  end
  if shapes.empty? || sha.length == 5
    rektangle = Rektangle.new(width, height)
    puts rektangle.draw
  else
    raise ShapesNumberIncorrectError
  end
  rektangle = Rektangle.new(width, height)
  puts rektangle.draw
rescue ArgumentError => e
  puts "#{e.class} -> #{e.message}"

end
