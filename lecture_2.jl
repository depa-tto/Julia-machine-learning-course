# integers

a1 = 125
typeof(a1) # Int64

a2 = Int8(125)
typeof(a2) # Int8

a3 = 6565465468798465134654654465
typeof(a3) # Int128

a4 = 46546546546548762132132456587745855161241154673
typeof(a4) # BigInt

print(a1)
println(typeof(a1))

print(a2)
println(typeof(a2))

print(a3)
println(typeof(a3))

print(a4)
println(typeof(a4))

# floating point numbers
b1 = 123.0
typeof(b1) # Float64

b1 = Int(123.0)
typeof(b1)

b2 = 6523544.05
typeof(b2)

b3 = 545f3 # 545 multiply by 10 to the power of 3
typeof(b3) # Float32

round(2.678)
round(2.412)
round(2.678,digits=2)

ceil(2.547) # nearest integer values preceded by this floating point number
floor(3.456) # nearest integer values followed by this floating point number

round(-9.654)

# rational numbers
r1 = 16//20 
r2 = 160//209

typeof(r1) # rational number

r1 = Rational{Int8}(16//20) 
typeof(r1)

numerator(r1)
denominator(r2)

x = 0.345
r3 = rationalize(x) # 69//200

float(r3)

pi
rationalize(pi)

#######################################################
a = 15
b = 6
c = 25.5
d = 5.5
p = 2//3
q = 4//5

supertype(supertype(supertype(typeof(a))))
supertype(supertype(typeof(c)))
supertype(typeof(p))
supertype(Real)
supertype(Number)


subtypes(Real)
subtypes(Number)
subtypes(Any)
print(subtypes(Any))

# arithmetic operators
(a+b)
(a-b)
(a*b)
(a/b)

(a\b) # b divided by a
(a÷b) # integer part of a divided by b. we have to write \div 
(a^b) # a to the power of b
(a%b)

# equivalently
+(a,b)
-(a,b)
*(a,b)
/(a,b)
\(a,b)
÷(a,b)
^(a,b)
%(a,b)

sqrt(sin(a+b+c))
(sqrt ∘ sin ∘ +)(a,b,c) # \circ for ∘

# arithmetic operations on real numbers
