const btnSequence = ['red','blue','green','yellow'];
let gamePattern = [];
let userPattern = [];
let isStarted = 0;
let level = 0;

let res = document.querySelector('h1');

let play = (divName) => {
    var audio = new Audio("sounds/" + divName + ".mp3");
    audio.play();
}

let startOver = () =>{
    gamePattern = [];
    userPattern = [];
    level = 0;
    isStarted = 0;
}

let checkSeq = async (currentLevel) => {
    if(userPattern[currentLevel]==gamePattern[currentLevel]){
        if(userPattern.length==gamePattern.length){
            userPattern=[];
            await delay(1000);
            nextSequence();
        }
    }
    else{
        var audio = new Audio("sounds/wrong.mp3");
        document.body.classList.add("game-over");
        audio.play();
        await delay(500);
        document.body.classList.remove("game-over");
        res.style.fontSize='2.5rem';
        res.innerText = "Game Over (CORRECT Sequence is going to be displayed), Press Any Key To Restart";
        for(let i=0;i<gamePattern.length;i++){
            let targetDiv = document.querySelector(`.${gamePattern[i]}`);
            targetDiv.style.opacity = 0;         
            await delay(400);
            console.log(targetDiv);
            targetDiv.style.opacity = 1;
            await delay(300);
        }
        startOver();
    }
}

let nextSequence = async () => {
    let randomNumber = Math.floor(Math.random() * 4);
    let randomChosenColor = btnSequence[randomNumber];
    gamePattern.push(randomChosenColor);
    console.log(gamePattern);
    level = level+1;
    res.innerText = `Level ${level}`;
    let targetDiv = document.querySelector(`.${randomChosenColor}`);
    targetDiv.style.opacity = 0.3;    
    var audio = new Audio("sounds/" + randomChosenColor + ".mp3");
    audio.play();
    await delay(300);
    targetDiv.style.opacity = 1;
}

let delay = (d) => {
    return new Promise((resolve,reject)=>{
        setTimeout(()=>{
            resolve();
        },d);
    });
}

// let demo = async () => {
//     for(let i=0;i<gamePattern.length;i++){
//         let targetDiv = document.querySelector(`.${gamePattern[i]}`);
//         targetDiv.style.opacity = 0.5;
        
//         await delay(300);
//         targetDiv.style.opacity = 1;
//         await delay(300);
//     }
// }

document.querySelectorAll('.btn').forEach(divBtn => {
    divBtn.addEventListener('click',async ()=>{
    userPattern.push(divBtn.classList[0]);
    play(divBtn.classList[0]);
    divBtn.classList.add('pressed');
    await delay(100);
    divBtn.classList.remove('pressed');
    checkSeq(userPattern.length-1);
    console.log(userPattern);     
    });
});

document.body.addEventListener('keypress',()=>{
    if(!isStarted){
        isStarted=1;
        res.style.fontSize='4rem';
        res.innerText = "Press A Key To Start";
        nextSequence();
    }
});