input_file=ARGV[0]

def print_all(f)
	puts f.read()
end

def rewind(f)
	f.seek(10, IO::SEEK_SET)
	print f.readline()
end

def print_a_line(line_count, f)
	puts "#{line_count}, #{f.readline()}"
end

current_file=File.open(input_file)

puts "let's print three lines."

current_line=1
print_a_line(current_line, current_file)
current_line=current_line+1
print_a_line(current_line, current_file)
current_line=current_line+1
print_a_line(current_line, current_file)
rewind(current_file)

puts %q# you can type "Quotes"!! # 