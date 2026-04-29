"""....Functions in Python...."""

# A function is a reusable block of code.
# We define a function once and call it whenever needed.


"""....Defining and Calling a Function...."""

# def hello():        # defining the function using def keyword
#     print("Hello, how are you?")

# hello()            # calling the function
# hello()            # calling the function again
# hello()            # calling the function again


"""....print vs return in Functions...."""

#....1) using return :

# def hello():
#     return "Hello, how are you?"

# hello()             # No visible output
# print(hello())      # Output visible


#....2) using print :

# def hello():
#     print("Hello, how are you?")

# hello()             # Output visible immediately


"""....Parameters and Arguments...."""

# A parameter is the variable written inside the function definition.
# An argument is the actual value passed while calling the function.

# def greet(name):        # name = parameter
#     print("Hello", name)

# greet("Zeenat")         # "Zeenat" = argument


"""....Multiple Parameters...."""

# def introduce(name, age):
#     print("My name is", name)
#     print("I am", age, "years old")

# introduce("Zeenat", 23)


"""....Keyword Arguments...."""

# Keyword arguments allow us to pass values using parameter names.
# Order does not matter when using keyword arguments.

# def student(name, age):
#     print(name, age)

# student(age=23, name="Zeenat")


"""....Default Parameters / Default Arguments...."""

# Default parameters have a default value.
# If the caller does not pass a value, the default value is used.

# def welcome(name="Guest"):
#     print("Welcome", name)

# welcome()             # uses default value -> Guest
# welcome("Zeenat")     # overrides default value -> Zeenat


"""....Function with Return Value...."""

# return sends a value back from the function.
# That value can be stored in a variable or used later.

# def add_numbers(a, b):
#     return a + b

# result = add_numbers(10, 5)
# print(result)         # Output: 15


"""....Function with Condition...."""

# def check_even_odd(number):
#     if number % 2 == 0:
#         return "Even"
#     else:
#         return "Odd"

# print(check_even_odd(10))     # Output: Even
# print(check_even_odd(7))      # Output: Odd


"""....Practical Example...."""

# def calculate_area(length, width):
#     area = length * width
#     return area

# room_area = calculate_area(10, 5)
# print("Area:", room_area)     # Output: 50


"""....Simple Formula...."""

# Input -> Function -> Output

# def square(number):
#     return number * number

# print(square(4))              # Output: 16


"""....Key Points...."""

# - Use def to define a function.
# - Function name should be clear and meaningful.
# - Parentheses () are required.
# - Colon : is required after function definition.
# - Function body must be indented.
# - print displays output immediately.
# - return sends a value back from the function.
# - Functions help us write clean, reusable, and organized code.
