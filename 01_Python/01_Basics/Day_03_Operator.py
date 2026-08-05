#1)..... Arithmetic Oprators.....
#+, -, *, /, //, **, %

#1)" Arithmetic Operators in Python "

a = 10
b = 3
                                           
# Addition
print("Addition (a + b):", a + b)     #Output :   13

# Subtraction
print("Subtraction (a - b):", a - b)  #Output :   7

# Multiplication
print("Multiplication (a * b):", a * b)  #Output :  30

# Division (always returns float)
print("Division (a / b):", a / b)       #Output :  3.3333...

# Floor Division (removes decimal part)
print("Floor Division (a // b):", a // b)  #Output :  3

# Modulus (remainder)
print("Modulus (a % b):", a % b)         #Output :  1

# Power (exponent)
print("Power (a ** b):", a ** b)         #Output :  1000

#only works in numbers datatype(num1 + num2)





#2)" Assignment / Shorthand Operators "

#( assignment operators are used to store or update values in a variable )

x = 10
print("Initial value of x:", x)

# Add and assign
x += 5
print("After x += 5 :", x)   #Output : 15

# Subtract and assign
x -= 3
print("After x -= 3 :", x)   #Output : 12

# Multiply and assign
x *= 2
print("After x *= 2 :", x)   #Output : 24

# Divide and assign
x /= 4
print("After x /= 4 :", x)   #Output : 6.0

# Floor divide and assign
x //= 2
print("After x //= 2 :", x)  #Output : 3.0

# Modulus and assign
x %= 2
print("After x %= 2 :", x)   #Output : 1.0

# Power and assign
x **= 3
print("After x **= 3 :", x)  #Output : 1.0



#3) " Comparison Operators in Python "

a = 10
b = 5
c = 10

# Equal to
print("a == b :", a == b)   #Output : False
print("a == c :", a == c)   #Output : True

# Not equal to
print("a != b :", a != b)   #Output : True
print("a != c :", a != c)   #Output : False

# Greater than
print("a > b  :", a > b)    #Output : True

# Less than
print("a < b  :", a < b)    #Output : False

# Greater than or equal to
print("a >= c :", a >= c)   #Output : True
print("b >= a :", b >= a)   #Output : False

# Less than or equal to
print("b <= a :", b <= a)   #Output : True
print("a <= c :", a <= c)   #Output : True


#4) " Logical Operators in Python "

a = 10
b = 5

# 1)...AND operator...
# The and operator gives True only when all conditions are True.
# If any one condition is False, result will be False.

print("a > 5 and b > 2 :", a > 5 and b > 2)     #Output : True
print("a > 5 and b > 10:", a > 5 and b > 10)    #Output :  False

# 2)...OR operator...
# The or operator gives True if at least one condition is True.
# It only gives False when both conditions are False.

print("a > 5 or b > 10 :", a > 5 or b > 10)     #Output :  True
print("a < 5 or b > 10 :", a < 5 or b > 10)     #Output :  False

# 3)... NOT operator...
# If something is True, not will make it False
# If something is False, not will make it True

print("not(a > 5):", not(a > 5))                #Output :  False
print("not(a < 5):", not(a < 5))                #Output :  True

