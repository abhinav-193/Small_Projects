# Rock Paper Scissors Game using HTML, CSS and JavaScript

## Introduction:

Rock, paper, and scissors game is a simple yet fun game. In this project, the *User* can play against the *Computer*. Both the players can choose from three options: a **Rock**, **Paper** or **Scissors**. Based on user and computer choices, the outcome can be either *Win*, *Loss* or *Draw*.
Both the players can have inifinite number of moves, and the scoreboard moves up based on the wins, losses and draws for each player.

## HTML Layout

The _index.html_ file gives the basic framework for the game. In the head tag, we have linked the _style.css_ file which provides the styling for the game.

First, we have created a class for the **scoreboard** which contains two badges, namely: _user_ and _comp_. On the user side, the score of the user will be shown, while on the comp side the score of the computer will be shown.

Then, we have created a class for the **result**. Inside the result class, we have given a _paragraph_ tag where the result comment will show. The default comment is: "Paper covers rock. You win!".

Then, we have created a class for **choices**, which further contains three sub-classes, one for each choices, namely _Rock_, _Paper_ and _Scissors_. Each choices contains an id ('r' for Rock, 'p' for Paper and 's' for Scissors) and a corresponding choice image.

At the end, we have added an **action message** which shows "Make your move." by default. This message has been created to prompt the user to choose any one of the provided three choices and play the game.

We have added the _script.js_ file in the body tag towards the end to link the JavaScript file for the game.

## CSS Styling

Now, we have styled the various elements used in the html file using css.
Firstly, we have imported the font named 'Asap' from google fonts to be used in our project.

We have given the background colour for the _game body_ as a blue-black colour shade. For the _header_ we have given a white coloured background and a padding of 20px to give some space between the content and border.

For _h1_, we have used a black-ish font colour and aligned it to the center. The font used is 'Asap, sans-serif' which we previously imported.

Now, we have provided styling for the _scoreboard_ and _badge_ classes as mentioned in the file _style.css_.

We have positioned the _user-label_(user) and _computer-label_(comp) next.

Further, we have provided styling for the various other classes present, such as _result_, the _p_ tag under the result class, _choices_, and _choice_.

We have also added the hover function to the class _choice_. Next, we have styled the _action-message_.

Towards the end, we have added **green**, **red** and **gray** glows for wins, losses and draws respectively.

## JavaScript Part

Now, we'll talk about the JavaScript part which makes our game functional.

First, we have created variables for the _User Score_ and _Computer Score_ and set their default values to **0** and **0** respectively and then we have selected our HTML elements.

Now, we have created a function to *get the computer choice*. We have also created a function to convert the responses (r,p and s) to words as Rock, Paper and Scissors respectively.

Further, we have created three separate functions **win**, **lose** and **draw** to put in the functioning logics for three situations: _User Wins_, _User Loses_ and _It's a Draw_ respectively. We have also added green, red and gray glows with a time period of 300ms for winning, losing and draw respectively.

Further, we have created a _game_ function to determing winning, losing and draw conditions based on the coices selected by the user and computer. For this we have used the switch-case statement.

Now, we have run the _game_ function and added a _main_ function to add the final functionality to our game.

## Conclusion

We have created a fully-functional Rock, Paper and Scissors game using simple HTML, CSS and JavaScript.

_Coded by Saniya Bhargav with help from freeCodeCamp_