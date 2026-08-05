""".....String...."""


#...1) String Indexing...

# a) Positive Indexing

# a = "NATURE"
# print(a[3])                #output : U

# b) Negative Indexing

# b = "ZEENAT QURESHI"
# print(b[-1])               #output : I



#...2) String Slicing...

# a = "Hello I Am Data Scientist"

# print(a[::])      #output : Hello I Am Data Scientist
# print(a[:5])      #output : Hello
# print(a[11:15])   #output : Data 
# print(a[16:])     ##output : Scientist


#...3) Immutable Nature...

# a = "hzllo"
# a[1] = 'e'    #show error because it is immutable



""".....Print Statement Ways...."""

#....1) Narmal Way....

# name = "HANIA AMIR"
# age = 30

# print("My name is",name,"and my age is",age)

#...output....
# My name is HANIA AMIR and my age is 30



#....2) Formatted String Way....

# name = "ZEENAT QURESHI"
# age = 23

# print(f"My Name is {name} and my age is {age}")   

#...output....
# My Name is ZEENAT QURESHI and my age is 23



""".....Type Conversion...."""

# a = "23"         # string
# a = int(a)       # convert Sring to int

# b = 55           # integer
# b = float(b)     # convert integer to float

# a = 0            # integer
# print(bool(a))   # convert interger to boolean


''' Truthy Values : almost everything 
    Falsy Values : 0, 0.0, False, "", [], {}, () '''



""".....Input Statement...."""

# name = input("Tell Your Name : ")
# age = int(input("Tell Your Age : "))
# print(f"My Name is {name} and My Age is {age}")

# a = "yo brother"

# print(a[3:10:1])

#there are default values aswell

# print(a[::])

# a = "hello I am Data scientist"

# # print(a[16:25:1])

# age = 23
# Des = "Data Scientist"

# print(f"hello my age is {age} and my designation is {Des}")

# print(r"hello my name is zeenat\b and my age is 23")

# a = 0

# b = ""
# print(bool(a))

# age = int(input("hello what is your age ?"))

# print(type(age))