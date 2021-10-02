
from pygame import init, mixer
import pygame
pygame.init()
from datetime import datetime
from time import time

def musicloop(file , stopword):
    mixer.init()
    pygame.mixer.music.load(file)
    mixer.music.play(15)
    while True:
        a=input()
        
        if a==stopword:
            mixer.music.stop()
            break

def detailkeeper(message):
    with open("My Details.txt" , "a") as f:
        f.write(f"You - {message} - At - {datetime.now()}\n\n")

        


if __name__== '__main__':
    print("ENTER YOUR REQUIRED DURATION BELOW  IN Seconds \n\n")

    water_duration =int(input("\nWater Duration\n"))
    eye_duration = int(input("\nEye Relax Duration\n"))
    exercise_duration = int(input("\nExercise Duration\n"))


    init_water = time()
    init_eye = time()
    init_exercise = time()

    

    while True:
        if time() - init_water > water_duration:
            print("\n\nWater Drinking Time Dude.\nEnter 'drank' to stop the remainder")
            musicloop('water.mp3' , 'drank')
            init_water= time()
            detailkeeper("Drank Water")

        elif time() - init_eye > eye_duration:
            print("\n\nEye Relaxing Time Dude.\nEnter 'done' to stop the remainder")
            musicloop('eye.mp3' , 'done')
            init_eye= time()
            detailkeeper("Eye Relaxed")
        elif time() - init_exercise > exercise_duration:
            print("\n\nExercise Time Dude.\nEnter 'done' to stop the remainder")
            musicloop('exercise.mp3' , 'done')
            init_exercise= time()
            detailkeeper("Exercised")




    