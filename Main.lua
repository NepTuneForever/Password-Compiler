local keys = {
	[1] = 'a';
	[2] = 'b';
	[3] = 'c';
	[4] = 'd';
	[5] = 'e';
	[6] = 'f';
	[7] = 'g';
	[8] = 'h';
	[9] = 'i';
	[10] = 'j';
	[11] = 'k';
	[12] = 'l';
	[13] = 'm';
	[14] = 'n';
	[15] = 'o';
	[16] = 'p';
	[17] = 'q';
	[18] = 'r';
	[19] = 's';
	[20] = 't'; 
	[21] = 'u';
	[22] = 'v';
	[23] = 'w';
	[24] = 'x';
	[25] = 'y';
	[26] = 'z';

}

local function CreateNumber(Digits)
	local Numbers = {}
	for i = 1, Digits do
		local Number = math.random(1, 26)
		table.insert(Numbers, Number)
	end
	return Numbers
end

local Password = 'MySecretPassword'
local NoW = string.len(Password)

local x = CreateNumber(NoW)
local DecompiledPassword = table.concat(x)

local function MixedDecompiledWords()
	local function shuffleString(str)
		local letters = {}
		for i = 1, #str do
			table.insert(letters, str:sub(i, i))
		end

		for i = #letters, 2, -1 do
			local j = math.random(i)
			letters[i], letters[j] = letters[j], letters[i]
		end
		
		return table.concat(letters)
	end
	
	local MixedPassword = shuffleString(DecompiledPassword)
	return MixedPassword
end

local MixedPassword = MixedDecompiledWords()
print('FinalPassword: '.. MixedPassword)
