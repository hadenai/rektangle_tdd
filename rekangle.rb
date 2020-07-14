
begin
width = ARGV[0].to_i
height = ARGV[1].to_i
if width < 1 || height < 1
  raise ArgumentError, 'Arguments sign is wrong'
end
rescue ArgumentError => e
  puts "#{e.class} -> #{e.message}"

end
