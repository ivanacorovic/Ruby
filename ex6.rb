name1="Ben"
name2="Joe"
puts "Hello, #{name1}, where is #{name2}?"

puts "."*10

end1="Z"
end2="d"
end3="r"
end4="a"
end5="v"
end6="o"

puts end1+end2+end3+end4+end5+end6

formatter="%s %s %s %s"

puts formatter %[1, 2, 3, 4]
puts formatter %["one", "two", "three", "four"]
puts formatter % [true, false, true, false]
puts formatter %[formatter, formatter, formatter, formatter]
puts formatter %[
"I had this thing.", 
"That you could type up right.", 
"But it did't sing.",
 "So I said goodnight."]

 days="mon, tue, wed, thr, fri, sat, sun"
 months="jan\nfeb\nmar\napr"

 puts "here are the days", days
 puts "here are the days #{days}"
 puts "here are the months", months


puts <<PARAGRAPH
there is someting going on here.
With the PARAGRAPH thing.
PARAGRAPH
