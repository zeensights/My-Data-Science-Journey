".....Loops....."

"""...1)  for loop """
#  we use to repeat a block of code multiple times.
#  We use it when we know how many times we want the loop to run, 
#  or when we want to iterate over a sequence like a list, string, or range of numbers.
#  range function ( start, stop, steps)


#...1) example :- Using range (start, stop, step)
for i in range(1, 6, 1):
    print(i)

#...Output...
# 1
# 2
# 3
# 4
# 5

#...2) example :- Looping through a String
for letter in "Python":
    print(letter)

#...Output...
# P
# y
# t
# h
# o
# n


#...3) example :- Using range() with Index
fruit = "APPLE"
for i in range(len(fruit)):
    print(i, fruit[i])

#...output...
# 0 A
# 1 P
# 2 P
# 3 L
# 4 E

"""...2)  while loop """

# A while loop is used to repeat a block of code as long as a condition is True.

# Unlike a for loop (where repetitions are usually fixed),
# a while loop runs based on a condition. When the condition becomes False, the loop stops.


#...1) example :- Print Numbers 1 to 5
count = 1

while count <= 5:
    print(count)
    count += 1  

#...output...     
# 1
# 2
# 3
# 4
# 5


#...2) Example :- Countdown
num = 5

while num > 0:
    print(num)
    num -= 1

#...output...
# 5
# 4
# 3
# 2
# 1

".... while Loop with else ...."
# The else part runs only when the loop finishes normally (when the condition becomes False).
# If the loop is stopped using break, the else block does not run.


#....example :- 
count = 1

while count <= 3:
    print(count)
    count += 1
else:
    print("Loop finished successfully")

#...output...
# 1
# 2
# 3
# Loop finished successfully


"...Breaking a while Loop..."
# we use the break statement to immediately stop a loop, even if the condition is still True.

# Normally, a while loop runs until its condition becomes False.
#  But break allows us to exit the loop early when a specific condition is met.

#...Example 1:- Stop at a Specific Number
count = 1

while count <= 5:
    if count == 3:
        break
    print(count)
    count += 1

#...output...
# 1
# 2

"...continue in a while Loop..."
# continue statement is used to skip the current iteration of a loop and move to the next one.

# Unlike break (which stops the loop completely),
# continue only skips the current cycle and keeps the loop running.

#...Example 1:- Skip a Specific Number
count = 0

while count < 5:
    count += 1
    if count == 3:
        continue
    print(count)

#...output...
# 1
# 2
# 4
# 5

#...Example 2:- Print Only Even Numbers
num = 0

while num < 10:
    num += 1
    if num % 2 != 0:
        continue
    print(num)


#...output...
# 2
# 4
# 6
# 8
# 10

# Odd numbers are skipped using continue.     
