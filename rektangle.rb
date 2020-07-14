Dir[File.dirname(__FILE__) + '/errors/*.rb'].each{ |file| require file }

#check argument
begin
width = ARGV[0].to_i
height = ARGV[1].to_i
if width < 1 || height < 1
  raise ArgumentSignError
end
# rektangle = Rektangle.new(width, height)
rescue ArgumentError => e
  puts "#{e.class} -> #{e.message}"

end
