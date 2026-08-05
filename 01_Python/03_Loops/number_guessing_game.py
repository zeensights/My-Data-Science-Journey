# import random 

# num = random.randint(1,100)

# tries = 0 
# while True:
#     guessed = int(input("guess the number between 1 - 100"))
#     tries += 1 
#     if guessed == num:
#         print(f"congratulations you found your number in {tries} tries")
#         break
#     elif guessed > num:
#         print("sorry you need to go lower\n")
#     elif guessed < num:
#         print("sorry you have to go a little upper\n")


import streamlit as st
import random

st.title("🎯 Number Guessing Game")

if 'num' not in st.session_state:
    st.session_state.num = random.randint(1, 100)
    st.session_state.tries = 0
    st.session_state.game_over = False

def restart_game():
    st.session_state.num = random.randint(1, 100)
    st.session_state.tries = 0
    st.session_state.game_over = False

guess = st.number_input("Enter a number between 1 and 100", min_value=1, max_value=100, step=1)

if st.button("Submit Guess"):
    st.session_state.tries += 1
    
    if guess == st.session_state.num:
        st.success(f"🎉 Congratulations! You found it in {st.session_state.tries} tries.")
        st.balloons()
        st.session_state.game_over = True
    elif guess > st.session_state.num:
        st.warning("📉 Sorry, you need to go lower!")
    else:
        st.warning("📈 Sorry, you need to go a little higher!")

if st.button("Reset Game"):
    restart_game()
    st.rerun()