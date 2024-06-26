# -*- coding: utf-8 -*-
"""Python Turtle

Automatically generated by Colab.

Original file is located at
    https://colab.research.google.com/drive/1mX62k0c-i06cSU2rAvxUU3i0ovarrItB
"""

from turtle import *
from random import *
import turtle
import time


screen = turtle.Screen()
screen.setup(800, 500)
screen.bgcolor("forestgreen")
turtle.speed(0)


turtle.penup()
turtle.goto(-100, 205)
turtle.color("white")
turtle.write("TURTLE RACE", font=("Arial", 20, "bold"))

turtle.goto(-350, 200)
turtle.pendown()
turtle.color("chocolate")
turtle.begin_fill()
for i in range(2):
    turtle.forward(700)
    turtle.right(90)
    turtle.forward(400)
    turtle.right(90)
turtle.end_fill()

gap_size = 20
turtle.shape("square")
turtle.penup()

turtle.color("white")
for i in range(10):
    turtle.goto(250, (170 - (i * gap_size * 2)))
    turtle.stamp()

for i in range(10):
    turtle.goto(250 + gap_size, ((210 - gap_size) - (i * gap_size * 2)))
    turtle.stamp()

turtle.color("black")
for i in range(10):
    turtle.goto(250, (190 - (i * gap_size * 2)))
    turtle.stamp()

for i in range(10):
    turtle.goto(251 + gap_size, ((190 - gap_size) - (i * gap_size * 2)))
    turtle.stamp()

blue_turtle = Turtle()
blue_turtle.color("cyan")
blue_turtle.shape("turtle")
blue_turtle.penup()
blue_turtle.goto(-300, 150)
blue_turtle.pendown()

pink_turtle = Turtle()
pink_turtle.color("magenta")
pink_turtle.shape("turtle")
pink_turtle.penup()
pink_turtle.goto(-300, 50)
pink_turtle.pendown()

yellow_turtle = Turtle()
yellow_turtle.color("yellow")
yellow_turtle.shape("turtle")
yellow_turtle.penup()
yellow_turtle.goto(-300, -50)
yellow_turtle.pendown()

green_turtle = Turtle()
green_turtle.color("lime")
green_turtle.shape("turtle")
green_turtle.penup()
green_turtle.goto(-300, -150)
green_turtle.pendown()

time.sleep(1)


while blue_turtle.xcor() <= 230 and pink_turtle.xcor() <= 230 and yellow_turtle.xcor() <= 230 and green_turtle.xcor() <= 230:
    blue_turtle.forward(randint(1, 10))
    pink_turtle.forward(randint(1, 10))
    yellow_turtle.forward(randint(1, 10))
    green_turtle.forward(randint(1, 10))

if blue_turtle.xcor() > pink_turtle.xcor() and blue_turtle.xcor() > yellow_turtle.xcor() and blue_turtle.xcor() > green_turtle.xcor():
    print("Blue turtle wins!")
    for i in range(72):
        blue_turtle.right(15)

elif pink_turtle.xcor() > blue_turtle.xcor() and pink_turtle.xcor() > yellow_turtle.xcor() and pink_turtle.xcor() > green_turtle.xcor():
    print("Pink turtle wins!")
    for i in range(72):
        pink_turtle.right(15)

elif yellow_turtle.xcor() > blue_turtle.xcor() and yellow_turtle.xcor() > pink_turtle.xcor() and yellow_turtle.xcor() > green_turtle.xcor():
    print("Yellow turtle wins!")
    for i in range(72):
        yellow_turtle.right(15)

else:
    print("Green turtle wins!")
    for i in range(72):
        green_turtle.right(15)