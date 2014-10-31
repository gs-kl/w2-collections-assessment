data="John            Foley             john@gschool.it         Beginning snark
Sylwester       Kelsey            sellie@gmail.com        Ruby Immersive
Timothy         Rama              tim.rama@gmail.com      Ruby Immersive
Kane            Baccigalupi       kane@gschool.it         C for dummies
Nikita          Theodosius        nikita.theo@gmail.com   Ruby Immersive
Roddy           Eldred            roddy.el@gmail.com      Ruby Immersive
Martha          Berner            martha@gschool.it       Time travel for beginners
Kofi            Thomas            k.thomas@hotmail.com    Ruby Immersive"

def formatdata softtabbeddata
	arrayoflines = softtabbeddata.split("\n")
	arrayofarrays = []
	arrayoflines.each do |datastring|
		dataarray = datastring.split(/\s{2,}/)	
		arrayofarrays.push(dataarray)
	end
	arrayofhashes = arrayofarrays.map do |a|
		{
		first_name: a[0],
		last_name: a[1],
		email: a[2],
		favorite_book: a[3]
		}
	end
	print arrayofhashes
end

formatdata data
