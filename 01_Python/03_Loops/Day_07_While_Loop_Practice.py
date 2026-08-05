""" WHILE LOOP -  Practice Set """
 
 
# ============================================================
# TOPIC 1 :- 1 to n
# ============================================================
"""
    Print numbers from 1 to n in increasing order.
"""
# n = int(input("Enter n : "))
# i = 1
# while i <= n:
#     print(i)
#     i += 1
 
 
# ============================================================
# TOPIC 2 : Reverse Counter - n to 1
# ============================================================
"""
    Print numbers from n to 1 in decreasing order.
"""
# n = int(input("Enter n : "))
# while n >= 1:
#     print(n)
#     n -= 1
 
 
# ============================================================
# TOPIC 3 : Sum of Natural Numbers
# ============================================================
"""
    Find total sum of 1 + 2 + 3 + ... + n
    Example: n=5 → 1+2+3+4+5 = 15
"""
# n = int(input("Enter n : "))
# total = 0
# i = 1
# while i <= n:
#     total += i
#     i += 1
# print("Sum =", total)
 
 
# ============================================================
# TOPIC 4 : Sum of Even Numbers (1 to n)
# ============================================================
"""
    Add only even numbers from 1 to n.
    Example: n=10 → 2+4+6+8+10 = 30
"""
# n = int(input("Enter n : "))
# total = 0
# i = 1
# while i <= n:
#     if i % 2 == 0:
#         total += i
#     i += 1
# print("Sum of even numbers =", total)
 
 
# ============================================================
# TOPIC 5 : Sum of Odd Numbers (1 to n)
# ============================================================
"""
    Add only odd numbers from 1 to n.
    Example: n=10 → 1+3+5+7+9 = 25
"""
# n = int(input("Enter n : "))
# total = 0
# i = 1
# while i <= n:
#     if i % 2 != 0:
#         total += i
#     i += 1
# print("Sum of odd numbers =", total)
 
 
# ============================================================
# TOPIC 6 : Factorial of a Number
# ============================================================
"""
    Multiply all numbers from 1 to n together.
    Example: 5! = 5x4x3x2x1 = 120
    Used in: probability, statistics, combinations
"""
# n = int(input("Enter n : "))
# fact = 1
# i = 1
# while i <= n:
#     fact *= i
#     i += 1
# print(f"{n}! =", fact)
 
 
# ============================================================
# TOPIC 7 : Reverse a Number
# ============================================================
"""
    Flip digits of a number backwards.
    Example: 1234 → 4321
    Logic: take last digit using % 10, build reverse number
"""
# n = int(input("Enter a number : "))
# original = n
# reverse = 0
# while n > 0:
#     digit = n % 10        # get last digit
#     reverse = reverse * 10 + digit   # attach to reverse
#     n = n // 10           # remove last digit
# print(f"Reverse of {original} =", reverse)
 
 
# ============================================================
# TOPIC 8 : Count Digits in a Number
# ============================================================
"""
    Count how many digits a number has.
    Example: 12345 has 5 digits
    Logic: keep dividing by 10 until number becomes 0
"""
# n = int(input("Enter a number : "))
# count = 0
# while n > 0:
#     n = n // 10
#     count += 1
# print("Total digits =", count)
 
 
# ============================================================
# TOPIC 9 : Sum of Digits
# ============================================================
"""
    Add all digits of a number.
    Example: 1234 → 1+2+3+4 = 10
    Logic: get last digit using % 10, add to total
"""
# n = int(input("Enter a number : "))
# total = 0
# while n > 0:
#     digit = n % 10
#     total += digit
#     n = n // 10
# print("Sum of digits =", total)
 
 
# ============================================================
# TOPIC 10 : Palindrome Number
# ============================================================
"""
    A number that reads same forwards and backwards.
    Example: 121, 1331, 12321 are palindromes
    Logic: reverse the number, compare with original
"""
# n = int(input("Enter a number : "))
# original = n
# reverse = 0
# while n > 0:
#     digit = n % 10
#     reverse = reverse * 10 + digit
#     n = n // 10
# if original == reverse:
#     print(f"{original} is a Palindrome!")
# else:
#     print(f"{original} is NOT a Palindrome!")


# ============================================================
# TOPIC 11 : Automorphic Number
# ============================================================
"""
    A number whose square ends with the number itself.
    Example: 5  → 5^2  = 25     → ends with 5  ✓
    Example: 25 → 25^2 = 625    → ends with 25 ✓
    Example: 76 → 76^2 = 5776   → ends with 76 ✓
"""
# n = int(input("Enter a number : "))
# square = n * n
# digits = len(str(n))
# last_digits = square % (10 ** digits)
# if last_digits == n:
#     print(f"{n} is an Automorphic Number!")
# else:
#     print(f"{n} is NOT an Automorphic Number!")