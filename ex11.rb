filename=ARGV.first
prompt =">"
txt=File.open(filename)

puts "Here's tour file #{filename}"

puts txt.read()
puts "I'll ask tou to type it again."

print prompt

file_again=STDIN.gets.chomp()
txt_again=File.open (file_again)


puts txt_again.read()



