# ....."Conditional Statement".....

# # 1)...if condition:
# #      code runs if condition is True

# # 2)...elif another_condition:
# #      code runs if first condition False but this True

# # 3)...else:
# #      code runs if all above conditions are False


"=== Voter Eligibility Program ==="

age = int(input("Enter your age: "))

if age >= 18:
    print("You are eligible to vote.")
else:
    print("You are not eligible to vote.")


   # Example 1:" Voter Eligibility "

age = 20

if age >= 18:
    print("You are eligible to vote.")
else:
    print("You are not eligible to vote.")

    #Output : You are eligible to vote.


# Example 2: " Grade Calculator "

marks = 82

if marks >= 90:
    print("Grade A")
elif marks >= 75:
    print("Grade B")
elif marks >= 50:
    print("Grade C")
else:
    print("Fail")

 #Output : Grade B

