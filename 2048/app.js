const squaresGrid = document.querySelectorAll(".grid-cell");
const scoreText = document.querySelector(".score");
const newGame = document.querySelector(".newGame");
const boardSize = 4;
const squareArr = new Array(boardSize);
let score = 0;
let isOver = false;
let isWin = false;

const initialize = () => {
  document.querySelector('.game-result').style.display = 'none';
  document.querySelector('.grid-display').style.opacity = 1;
    document.querySelector('.grid-cell').style.opacity = 1;
  for (let i = 0; i < boardSize; i++) {
    squareArr[i] = [];
  }
  for (let i = 0; i < boardSize; i++) {
    for (let j = 0; j < boardSize; j++) {
      squareArr[i][j] = 0;
    }
  }
};

const resetBoard = () => {
  isOver = false;
  isWin = false;
  score = 0;
  squaresGrid.forEach((sq) => {
    sq.innerText = "";
  });
};

const resultDisplay = () => {
  document.querySelector('.game-result').style.display = '';
  document.querySelector('.grid-display').style.opacity = 0.5;
  document.querySelector('.grid-cell').style.opacity = 0.4;
  let text, btnText;
  if (isWin) {
    text = 'You Got 2048 TILE!!';
    btnText = 'Play Again';
  } else {
    text = 'Game Over!!';
    btnText = 'Try Again';
  }
  const btn = document.createElement('button');
  btn.innerText = btnText;
  document.querySelector('.game-result').innerText = text; 
  document.querySelector('.game-result').insertAdjacentElement('beforeend', btn);
  document.querySelector('.game-result button').addEventListener("click", () => {
    restartGame();
  })
}

const displayBoard = () => {
  scoreText.innerText = score;
  for (let i = 0; i < boardSize; i++) {
    for (let j = 0; j < boardSize; j++) {
      let classList = squaresGrid[i * 4 + j].classList;
      for (let k = 1; k < classList.length; k++) {
        if (classList[k] != "grid-cell") {
          squaresGrid[i * 4 + j].classList.remove(classList[k]);
        }
      }
      if (squareArr[i][j] != 0) {
        if(squareArr[i][j] == 2048){
          isWin = true;
        }
        squaresGrid[i * 4 + j].innerText = squareArr[i][j];
        squaresGrid[i * 4 + j].classList.add(`cell-${squareArr[i][j]}`);
      } else {
        squaresGrid[i * 4 + j].innerText = "";
      }
    }
  }
  if(isWin){
    isOver = true;
    resultDisplay();
  }
};

const generateRandom = () => {
  let randomNumX = Math.floor(Math.random() * boardSize);
  let randomNumY = Math.floor(Math.random() * boardSize);
  let randomFour = Math.floor(Math.random() * 30);
  if (squareArr[randomNumX][randomNumY] == 0) {
    squareArr[randomNumX][randomNumY] = randomFour == 4 ? 4 : 2;
  } else {
    generateRandom();
  }
};

const restartGame = () => {
  initialize();
  resetBoard();
  generateRandom();
  generateRandom();
  displayBoard();
}


newGame.addEventListener("click", () => {
  restartGame();
});

const commandKeyD = () => {
  let isChanged = 0;
  let similarVal = [];
  for (let i = 0; i < boardSize; i++) {
    let count = 0;
    let temp = [];
    let change = -1;
    for (let j = boardSize - 1; j >= 0; j--) {
      temp[j] = squareArr[i][j];
      if (squareArr[i][j] != 0) {
        similarVal[count++] = squareArr[i][j];
        if (count > 1) {
          if (
            similarVal[count - 1] == similarVal[count - 2] &&
            count - 2 != change
          ) {
            similarVal[count - 2] =
              similarVal[count - 1] + similarVal[count - 2];
            score += similarVal[count - 2];
            count--;
            change = count - 1;
          }
        }
      }
    }
    for (let j = boardSize - 1; j >= 0; j--) {
      if (j > boardSize - 1 - count) {
        squareArr[i][j] = similarVal[boardSize - j - 1];
      } else {
        squareArr[i][j] = 0;
      }
    }
    for (let j = boardSize - 1; j >= 0; j--) {
      if (temp[j] != squareArr[i][j]) {
        isChanged = 1;
      }
    }
  }
  return isChanged;
};

const commandKeyS = () => {
  let isChanged = 0;
  let similarVal = [];
  for (let j = 0; j < boardSize; j++) {
    let count = 0;
    let temp = [];
    let change = -1;
    for (let i = boardSize - 1; i >= 0; i--) {
      temp[i] = squareArr[i][j];
      if (squareArr[i][j] != 0) {
        similarVal[count++] = squareArr[i][j];
        if (count > 1) {
          if (
            similarVal[count - 1] == similarVal[count - 2] &&
            count - 2 != change
          ) {
            similarVal[count - 2] =
              similarVal[count - 1] + similarVal[count - 2];
            score += similarVal[count - 2];
            count--;
            change = count - 1;
          }
        }
      }
    }
    for (let i = boardSize - 1; i >= 0; i--) {
      if (i > boardSize - 1 - count) {
        squareArr[i][j] = similarVal[boardSize - i - 1];
      } else {
        squareArr[i][j] = 0;
      }
    }
    for (let i = boardSize - 1; i >= 0; i--) {
      if (temp[i] != squareArr[i][j]) {
        isChanged = 1;
      }
    }
  }
  return isChanged;
};

const commandKeyA = () => {
  let isChanged = 0;
  let similarVal = [];
  for (let i = 0; i < boardSize; i++) {
    let count = 0;
    let temp = [];
    let change = -1;
    for (let j = 0; j < boardSize; j++) {
      temp[j] = squareArr[i][j];
      if (squareArr[i][j] != 0) {
        similarVal[count++] = squareArr[i][j];
        if (count > 1) {
          if (
            similarVal[count - 1] == similarVal[count - 2] &&
            count - 2 != change
          ) {
            similarVal[count - 2] =
              similarVal[count - 1] + similarVal[count - 2];
            score += similarVal[count - 2];
            count--;
            change = count - 1;
          }
        }
      }
    }
    for (let j = 0; j < boardSize; j++) {
      if (j < count) {
        squareArr[i][j] = similarVal[j];
      } else {
        squareArr[i][j] = 0;
      }
    }
    for (let j = 0; j < boardSize; j++) {
      if (temp[j] != squareArr[i][j]) {
        isChanged = 1;
      }
    }
  }
  return isChanged;
};

const commandKeyW = () => {
  let isChanged = 0;
  let similarVal = [];
  for (let j = 0; j < boardSize; j++) {
    let count = 0;
    let temp = [];
    let change = -1;
    for (let i = 0; i < boardSize; i++) {
      temp[i] = squareArr[i][j];
      if (squareArr[i][j] != 0) {
        similarVal[count++] = squareArr[i][j];
        if (count > 1) {
          if (
            similarVal[count - 1] == similarVal[count - 2] &&
            count - 2 != change
          ) {
            similarVal[count - 2] =
              similarVal[count - 1] + similarVal[count - 2];
            score += similarVal[count - 2];
            count--;
            change = count - 1;
          }
        }
      }
    }
    for (let i = 0; i < boardSize; i++) {
      if (i < count) {
        squareArr[i][j] = similarVal[i];
      } else {
        squareArr[i][j] = 0;
      }
    }
    for (let i = 0; i < boardSize; i++) {
      if (temp[i] != squareArr[i][j]) {
        isChanged = 1;
      }
    }
  }
  return isChanged;
};

const isZeroPresent = () => {
  let count = 0;
  for (let i = 0; i < boardSize; i++) {
    for (let j = 0; j < boardSize; j++) {
      if (squareArr[i][j] == 0) {
        count++;
      }
    }
  }
  return count == 0 ? false : true;
};

const isDirectionLeft = () => {
  let flag = 0;
  for (let i = 0; i < boardSize; i++) {
    for (let j = 0; j < boardSize; j++) {
      if (i == boardSize - 1) {
        if (j != boardSize - 1) {
          if (squareArr[i][j] == squareArr[i][j + 1]) {
            flag = 1;
          }
        }
      } else {
        if (j == boardSize - 1) {
          if (squareArr[i][j] == squareArr[i + 1][j]) {
            flag = 1;
          }
        } else {
          if (
            squareArr[i][j] == squareArr[i][j + 1] ||
            squareArr[i][j] == squareArr[i + 1][j]
          ) {
            flag = 1;
          }
        }
      }
    }
  }
  return flag == 0 ? false : true;
};

document.addEventListener("keyup", (keyStroke) => {
  if (!isOver) {
    let key = keyStroke.code;
    let isChanged;
    if (key == "KeyW" || key == "KeyA" || key == "KeyS" || key == "KeyD") {
      switch (key) {
        case "KeyW":
          isChanged = commandKeyW();
          break;
        case "KeyA":
          isChanged = commandKeyA();
          break;
        case "KeyD":
          isChanged = commandKeyD();
          break;
        case "KeyS":
          isChanged = commandKeyS();
          break;
      }
      if (!isZeroPresent() && !isDirectionLeft()) {
        isOver = true;
      } else {
        if (isZeroPresent() && isChanged != 0) {
          generateRandom();
        }
        displayBoard();
      }
    }
  } else {
    // alert("Game over");
    resultDisplay()
  }
});

initialize();
generateRandom();
generateRandom();
displayBoard();
