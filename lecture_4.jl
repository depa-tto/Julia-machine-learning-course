s = "hello world!"
print(s)

typeof(s)

length(s)
first(s)
last(s)
lastindex(s)
s[12]


typeof('H')
typeof('h')
typeof(' ')
typeof('!')
typeof('9')
 
isdigit('9')
isdigit('h')
isletter('h')
isuppercase('h')
islowercase('h')

'h' |> isdigit # pipe operator
'h' |> isletter
'h' |> isuppercase

# string
str = "Julia for Machine Learning. We can learn Julia."
print(str)

str = "Julia for 'Machine Learning'. We can learn Julia."
print(str)
 
str = "Julia for \"Machine Learning\". We can learn Julia."
print(str)


str = "Julia for \"Machine Learning\".\nWe can learn Julia."
print(str)

str = """Julia for \"Machine Learning\".
We can learn Julia."""
print(str)


# string concatenation
name = "Jim"
age = 29
 
print("My name is ", name, ". I am ", age, " years old.") # strings are now concatenated
 
str = "My name is " * name * ". I am " * string(age) * " years old."
print(str)
 
str = *("My name is ", name, ". I am ", string(age), " years old.")
print(str)
 
str = string("My name is ", name, ". I am ", string(age), " years old.")
print(str)
 

# string interpolation
nm1 = "Jim"
nm2 = "Martha"
yrs = 37
amt = 100
 
"nm1 bought a watch to gift to her sister nm2 on her (yrs)th birthday."
 
str = "$nm1 bought a watch to gift to her sister $nm2 on her $(yrs)th birthday."
str = "$nm1 bought a watch for \$$amt to gift to her sister $nm2 on her $(yrs)th birthday."
 
str = raw"$nm1 bought a watch for \$$amt to gift to her sister $nm2 on her $(yrs)th birthday." # raw ignore interpolation
print(str)
 

# substring
str = "Julia for \"Machine Learning\".\nWe can learn Julia."
print(str)
length(str)
 
SubString(str, 1:7)
SubString(str, 1:7) |> typeof
 
chop(str, head = 11, tail = 22)
chop(str, head = 11, tail = 22) |> typeof
 
str[1:30]
chomp(str[1:30])
chomp(str[1:30]) |> typeof
 
str[10:28]
strip(str[10:28])
str[30:49]
strip(str[30:49])
strip(str[10:28]) |> typeof
strip(str[30:49]) |> typeof
 
split(str, 'a')
split(str, "We")
split(str, "")
 
words = split(str)
join(words)
join(words, " ")
join(words, ";")
 
# Characters
str = "Julia for \"Machine Learning\".😃\nWe can learn Julia."
print(str)
 
str[5]
str[6]
str[11]
str[5:11]
str[begin]
str[end]
collect(str)
 
for i in str
    print("$(i)_")
end
 
uppercase(str)
lowercase(str)
titlecase(str)
 
str[5] = 'A'       	
replace(str, 'a' => uppercase)
replace(str, "We" => "You")
replace(str, "Julia" => "Julia Programming")
reverse(str)
 
occursin("for", str)
occursin("Can", str)
occursin('R', str)
occursin('\n', str)
 
'c' in str
'\n' ∈ str
in('r', str)
 
startswith(str, "Ju")
endswith(str, '.')
 
count("Julia", str)
count("in", str)
count(isuppercase, str)
 
findfirst('a', str)             	
findlast('a', str)
findfirst("Julia", str)
findlast("Julia", str)
findall("Julia", str)
findall("a", str)
 
findfirst('a', str)             	
str[5]
str[6]
findfirst('😀', str)
str[30]
str[31]
nextind(str, 30)
prevind(str, 34)
textwidth('a')
textwidth('😀')
str[34]
 
length(str)
lastindex(str)
 
for i in eachindex(str)
    print("$(i) ")
end

for i in pairs(str)
    print("$(i); ")
end

'\u0061'                          	
'\u03B8'
'\U1F600'
 
'\u0061' |> Int
'\u03B8' |> Int
'\U1F600' |> Int
 
97 |> Char
952 |> Char
128512 |> Char
 
# Usage of parse() function 
parse(Int, "35")
parse(Float64, "23.6")
parse(Complex{Int8}, "3 + 2im")
parse(Int, "11001", base = 2)