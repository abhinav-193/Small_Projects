var gamePattern = [];
var userClickedPattern = [];

var buttonColors = ["red", "blue", "green", "yellow"];

var started = false;
$("body").on("keydown", function(){
  if(started === false){
    nextSequence();
    started = true;
  }

});
var level = 0;
function nextSequence(){
  var randomVariable = Math.floor(Math.random()*4);

  var randomChosenColor = buttonColors[randomVariable];

  gamePattern.push(randomChosenColor);
  $("#"+randomChosenColor).fadeOut(100).fadeIn(100);
  playAudio(randomChosenColor);

  console.log(gamePattern);
  $("#level-title").text("Level "+level);
  console.log("Current level is: " + level);
  userClickedPattern = [];
  console.log("Length of user input array after nextSequence is called: " + userClickedPattern.length);
  level++;
}

$(".btn").click(function(){

  var userChosenColor = $(this).attr("id");

  userClickedPattern.push(userChosenColor);
  console.log(userClickedPattern);
  playAudio(userChosenColor);
  //$("#"+userChosenColor).fadeOut(100).fadeIn(100);
  animatePress(userChosenColor);
  console.log("Length of user input array after clicking this button: "+userClickedPattern.length);
  checkAnswer(userClickedPattern.length-1);
});

function checkAnswer(currentLevel){
  // console.log(currentLevel);

    if(userClickedPattern[currentLevel] === gamePattern[currentLevel]){
      console.log("success");
      if(currentLevel === gamePattern.length - 1){
        setTimeout(function(){
          nextSequence();
        }, 1000);
      }
    }

    else{
      console.log("failed");
      var wrong = new Audio("sounds/wrong.mp3");
      wrong.play();
      $("body").addClass("game-over");
      setTimeout(function(){
        $("body").removeClass("game-over");
      }, 200);
      $("h1").text("Game Over, Press Any Key to Restart");
      $(document).on("keydown", startOver());
    }
}


function playAudio(chosenColor){
  console.log("playing sound");
  var audio = new Audio("sounds/" + chosenColor + ".mp3");
  audio.play();
}

function animatePress(chosenColor){
  $("#"+chosenColor).addClass("pressed");
  setTimeout(function(){
    $("#"+chosenColor).removeClass("pressed");
  }, 100);
}

function startOver(){
  started = false;
  level = 0;
  gamePattern = [];
}
