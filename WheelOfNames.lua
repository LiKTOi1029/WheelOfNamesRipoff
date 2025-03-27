function Randomizer() 

end
repeat
	io.write("type GO to pick a random line out of the \"Random.txt\" file\n")
	local choice = io.read("*l"):gsub("/n","")
until choice:upper() == "EXIT"