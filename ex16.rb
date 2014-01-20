filename=ARGV.first
scipt=$0

puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C."
puts "If you do want that, hit RETURN."

print "?"
STDIN.gets

puts "Opening the file..."
target=File.open(filename, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(target.size)

puts "Now I'm going to ask you three lines"

print "line 1"; ;line1=STDIN.gets.chomp()
print "line 2"; ;line2=STDIN.gets.chomp()
print "line 3"; ;line3=STDIN.gets.chomp()

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

target.close()