the_count=[1, 2, 3, 4, 5]
fruits=['apples', 'oranges', 'pears', 'apricots']
change=[1, 'pennies', 'dimes', 3, 'quarters']

for number in the_count
	puts "This is count #{number}"
end

fruits.each do |fruit|
	puts "A fruit of type: #{fruit}"
end

for fruit in fruits
	puts "A fruit of type: #{fruit}"
end

for i in change
	puts "I got #{i}"
end

elements=[]

for i in (0..5)
	puts "Addign #{i} to the list"
	elements.push(i)
end

for i in fruits
	elements.push(i)
end

for i in elements
	puts "Element was #{i}"
end

i=0
numbers=[]
while i<6
	numbers.push(fruits[i])
	i=i+1
	puts "Numbers now: #{numbers}"
end

for n in numbers
	puts n
end

animals=['bear', 'tiger', 'woolf', 'chicken']
bear=animals[3]
puts bear