print("Hello world") -- print to output stream.
print ("Heloo".."shadrack") -- string contcatination.

-- here are some comments in lua.
--[[
Multiline comments in lua.

]]

-- types in lua
-- numbers, strings, nil, boolean, table etc.

local test_var = "one" -- variable
local empty_var
print(test_var)
print(emty_var) -- will print nil
local first_name = "Shadrack"
local last_name = "Opoku"
print(first_name .. " " .. last_name) -- concatination

-- you can also have a multi-line string variable without the quotes
local multi_line_var = [[
	Helo
		friend
			this 
				will 
					keep 
						its 
							format
]] 
print(multi_line_var)

-- not_local vars (Global)
New_var = "something"
-- Global vars (same as Above)
_G.Hola_global_var= "glob something"
print (New_var, Hola_global_var)

-- type of datatype
print(type(New_var))

-- math
print(math.pi) -- pi in math
math.randomseed(os.time()) -- seeding at every second
print(math.random()) -- random
local min_range=20
local max_range=30
print(math.random(min_range, max_range)) --random with min and max random figures
print(math.min(10, 2, 5, 12, 34, 8, 1)) --min
print(math.max(10, 2, 5, 12, 34, 8, 1)) -- max
print(math.floor(3.99)) -- round down (3)
print(math.ceil(3.99)) --round up (4)
-- there is also math.sin, cos, tan and other stuff...

-- more on strings
-- there are no chars in lua both '' and "" are strings and ofcourse [[]] are for multiline
print("length of the variable "..#New_var) -- length of string is with a hash sign like bash
print ("length of raw string "..#"something") -- same as above
print (tostring("22")) -- convert string integers and floats to string
print (string.len(New_var)) -- will also return the length of the variable
print (string.upper(New_var)) -- will return the uppercase of the string
print (string.lower(New_var)) -- willl return lower case
local sub_from=3
local sub_to=9
print (string.sub(New_var, sub_from, sub_to)) -- substring from some column in the string to another
print (string.format("pi: %.3f\nMy age is %i",math.pi, 21)) -- formated strings
print (string.find(New_var, "thing")) -- will return the position of the found variable else nil. (both start and end of were it was found)
local found_start, found_end = string.find(New_var, "thing") -- assign 5 9 to the variable respectively.
print(string.match(New_var, "thing")) -- will return the matching string else nil (it's not for regex)

--  conditionals
if true then
	print ("it was true")
else
	print ("it was false")
end
-- almost like bash

local age = 15

if age > 2 or age < 20
	then
		print ("ok")
elseif age ~= 0  -- not equal (!= is not lua but ~= is)
	then print("not ok")
end

-- loops
for i = 1, 10 do -- print 1 - 10 increamentally by one.
	print(i)
end

for i = 1, 10, 2 do -- print 1 - 10 increamentally by two.
	print(i)
end

print("\n-----------------\n")
 
local arr1 = {1,3,1, 99}

for i = 0, #arr1 do
	print(arr1[i])
end
-- there are other loops like while loops which is the normal while loop
-- ther is repeat until loop which is basically do while loop
repeat
	print("hola")
until true -- will run atleast once until the condition is true
 
--  reading input.
io.write("write something") -- same as print but wont break to a new line.
local res = io.read() -- read input

-- table array, list dictionary
local arr2= {1,3,"hello",4,5}
arr2[7] = 21
print(arr2[3])
table.sort(arr2) -- sorts the array ascending
table.insert(arr2, 3, "world") -- will push over the element at that index and insert a new.
table.remove(arr2, 4) -- will remove the element at the current index.
table.concat(arr2, "-") -- return the arry as string seperated by the string provided.

-- function
local add10 = function(num) -- naming a function with a variable
	local ansr = num+10
	return ansr
end

function add11(num) -- giving a fnction a name.
	local ansr = num+10
	return ansr
end

local returnMore = function(num)
	return 1, 3, 4
end

local fir, se, thir = returnMore()


local spread_ = function(...)
	for key, value in pairs({...}) do
		print(key, value)
		return
	end
end

