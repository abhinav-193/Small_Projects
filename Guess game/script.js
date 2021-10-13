'use strict';

let secretNumber = Math.trunc(Math.random() * 20) + 1;
let score = 20;
let highscore = 0;

function displayScore()
{
    score--;
    document.querySelector('.score').textContent = score;
}

function displayMessage(msg) {
    document.querySelector('.message').textContent = msg;
}

document.querySelector('.check').addEventListener('click', function(){
    const guess = document.querySelector('.guess').value;
    if (!guess) {
        displayMessage('Invalid input');
        displayScore();
    }
    else if (guess == secretNumber) {
        displayMessage('You won');
        document.querySelector('.number').textContent = secretNumber;
        document.querySelector('body').style.backgroundColor = '#60b347';

        if(score>highscore)
        {
            highscore = score;
            document.querySelector('.highscore').textContent = highscore;
        }
    } 
    else if (guess!=secretNumber)
    {
         guess > secretNumber ? displayMessage('Too high'):displayMessage('Too low');

        if(score>1)
        {
            score--;
            document.querySelector('.score').textContent = score;
        }
        else
        {
            console.log("You lost the game");
            document.querySelector('.score').textContent = 0;
        }
    }
});


document.querySelector('.again').addEventListener('click', function()
{
    document.querySelector('body').style.backgroundColor = '#222';
    document.querySelector('.number').textContent = '?';
    document.querySelector('.score').textContent = 20;
    score = 20;
    document.querySelector('.guess').value = '';
    displayMessage('Start guessing...');
    secretNumber = Math.trunc(Math.random() * 20) + 1;
});
