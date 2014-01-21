ten_things="Apples Oranges Crows Telephone Light Sugar"

stuff=ten_things.split(' ')
more_stuff=%w(Day Night Song Frisbee Corn Banana Girl Boy)


while stuff.length !=10
	next_one=more_stuff.pop()
	puts "Adding #{next_one}"
	stuff.push(next_one)
end

puts stuff

puts stuff[1]
puts stuff[-1]
puts stuff.pop()
puts stuff.join(' ')
puts stuff.values_at(3, 5).join('#') 


