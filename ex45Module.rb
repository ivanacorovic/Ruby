module Ex45Module 

	def Ex45Module.Next(room)
		puts "Sta cete uraditi?"
		puts "<< "
		command=gets.chomp()

		if room=="GriffindorDorm" && command=="uzmi mac"
			return "Hagrid's"
		elsif room=="Hagrid's" && command=="ukradi Bakbija"
			return "Hogsmid"
		elsif room=="Hogsmid" && command=="popij pivo"
			return "Dumbledore's"
		elsif room=="Dumbledore's" && command=="uzmi pero feniksa"
			return "SLiterinDorm"
		elsif room=="SLiterinDorm" && command=="Razoruzaj Draka"
			return "Lake"
		elsif room=="Lake" && command=="Expecto Patronum"
			puts "Bravo! Pobijedili ste! :)"
			Process.exit(1)
		else
			puts "Nijde veze.. :/"
			Process.exit(1)
		end
	end
end
