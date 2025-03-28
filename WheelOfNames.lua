math.randomseed(os.time())
function DelimiterSetter(choice)
	-- Not implemented
end
function FromStringToTable(input, delimiter)
	local result, length, parsing = {}, input:len(), ""
	for num1 = 1, length, 1 do
		if input:sub(num1,num1) ~= delimiter then
			parsing = parsing..input:sub(num1,num1)
			print(">>[DEBUG]: "..parsing)
		elseif input:sub(num1,num1) == input:sub(length,length) then
			parsing = parsing..input:sub(num1,num1)
			print(">>[DEBUG]: "..parsing)
			table.insert(result, parsing)
			print(">>[DEBUG]: "..parsing)
		else
			table.insert(result, parsing)
			parsing = ""
			print(">>[DEBUG]: "..parsing)
		end
		return result
	end
end
function FileLoaderDeloader()
	local InputFile = io.open("input.txt"):read("*all")
	io.close("input.txt")
	print(">>[INPUT]: "..InputFile)
	return InputFile
end
function Randomizer(delim) 
	local Input = FileLoaderDeloader(); local SeparatedText = FromStringToTable(Input, delim); local Index = #SeparatedText; local Percentage = 100/Index
	
end
repeat
	local delim = ","
	io.write(">>type GO to pick a random item out of the \"Random.txt\" file\n>>DELIM to set delimiter. By default is \",\"")
	local choice = io.read("*l"):gsub("/n","")
	if choice:upper() == "GO" then print(Randomizer(delim))
	else choice:upper() == "DELIM" then --[[print(DelimiterSetter(choice))]] io.write(">>[NOT AVAILABLE]: This feature has not been implemented yet") end
until choice:upper() == "EXIT"