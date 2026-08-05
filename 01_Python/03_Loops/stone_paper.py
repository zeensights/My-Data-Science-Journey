# import random 

# cscore = 0
# hscore = 0 

# while True:
#     print(f"current scores you - {hscore} computer - {cscore}\n")
#     user = int(input("1 for stone , 2 for paper , 3 for scissors choose :- "))

#     com = random.randint(1,3)

#     if user == 1 and com == 3:
#         hscore+=1 
#         print("you won the round \n")

#     elif user == 2 and com == 1:
#         hscore+=1 

#         print("you won the round \n")

#     elif user == 3 and com == 2:
#         hscore+=1 

#         print("you won the round \n")

#     elif user == com:
#         print("it was a draw")

#     else:
#         cscore+=1 
#         print("computer won this round ")
    

#     if cscore == 5:
#         print("conmputer won this game 👿")
#         break
#     elif hscore == 5:
#         print("congratulations you won 🏅")
#         break


import streamlit as st
import random

if "hscore" not in st.session_state:
    st.session_state.hscore = 0
    st.session_state.cscore = 0
    st.session_state.result_text = "Choose your move to start!"

choices = {1: "Stone", 2: "Paper", 3: "Scissors"}

def play(user_choice):
    com_choice = random.randint(1, 3)
    result_text = f"Computer chose: {choices[com_choice]}\n"

    if user_choice == com_choice:
        result_text += "It's a draw! 🤝"
    elif (user_choice == 1 and com_choice == 3) or \
         (user_choice == 2 and com_choice == 1) or \
         (user_choice == 3 and com_choice == 2):
        st.session_state.hscore += 1
        result_text += "You won this round! 🎉"
    else:
        st.session_state.cscore += 1
        result_text += "Computer won this round! 🤖"

    st.session_state.result_text = result_text

def reset_game():
    st.session_state.hscore = 0
    st.session_state.cscore = 0
    st.session_state.result_text = "Choose your move to start!"

st.title("Stone Paper Scissors")
st.subheader(f"You: {st.session_state.hscore}  |  Computer: {st.session_state.cscore}")
st.info(st.session_state.result_text)

col1, col2, col3 = st.columns(3)
with col1:
    if st.button("STONE 🪨", use_container_width=True):
        play(1)
        st.rerun()
with col2:
    if st.button("PAPER 📄", use_container_width=True):
        play(2)
        st.rerun()
with col3:
    if st.button("SCISSORS ✂️", use_container_width=True):
        play(3)
        st.rerun()

if st.session_state.hscore == 5:
    st.success("Congratulations! You won the game! 🏅")
    st.balloons()
    if st.button("Play Again"):
        reset_game()
        st.rerun()
elif st.session_state.cscore == 5:
    st.error("Computer won the game! 👿")
    if st.button("Play Again"):
        reset_game()
        st.rerun()
else:
    if st.button("Reset Game"):
        reset_game()
        st.rerun()