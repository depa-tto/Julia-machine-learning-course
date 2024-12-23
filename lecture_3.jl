# logical operators
typeof(true)
typeof(false)

Int(true)
Int(false)

Bool(1)
Bool(0)

isinf(2/0)
isodd(34)
isletter('_')
isspace(' ')


5 in (2,5)

21.5 isa Integer
21.5 isa Float64

####################################################
x=10;y=10.0;z=12

x == y 
isequal(x,y)

x === y # false, because they are different data type 

x != y 
x < 2

isless(x,z)
z > x

'u' > 'k'
"elephant" > "elegant"

# not operator: !
!true
!false

# and operator
true && true
true && false
false && false

# or operator
true || true
true || false
false || false


x == y && x == z
x > 9 && z > y

y > z || x === y 
x == y || x != z 
!(x==y) || x != z


x == y || x != z && x < 9 && z > y
(x == y || x != z) && (x < 9 && z > y)
(x == y || x != z) && !(x < 9 && z > y)