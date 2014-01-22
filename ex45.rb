require './ex45Module'

class Room 
	def initialize(name)
		@name=name
		@next_room=nil
	end

	def dalje()
		@next_room=Ex45Module.Next(self.name)
		puts "lake"
	end

	def opis()
		puts "Sada ste u sobi #{name}. Ovo su opcije: \n"
		puts " uzmi mac\n ukradi Bakbija\n Expecto Patronum\n uzmi pero feniksa\n razoruzaj Draka\n popij pivo."		
	end

	attr_accessor :name, :next_room
end

def play(room)
	while true
		room.opis()
		room.dalje()
		 arg=room.next_room
		 room=Room.new(arg)
	end
end



room=Room.new("GriffindorDorm")
play(room)
