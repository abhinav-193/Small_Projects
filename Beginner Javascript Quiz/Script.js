 
function login()
{
  var emailtext=document.getElementById('email')
  var passtext=document.getElementById('pass')
  if(emailtext.value=="" || passtext.value=="")
  {
    alert("please input all fields")
  }
  
  localStorage.setItem("name",emailtext.value.split('@')[0].toString() );
  window.location.href="Homepage.html";

}

function namechange(){
  
  var usertext=document.getElementById('user')
  
  usertext.innerText=localStorage.getItem("name")
}
function category(e)
{
  if(e=="computers")
  {
    e=18
  }
  else if(e=="maths")
  {
    e=19;
  }
  else{
    e=30
  }
  localStorage.setItem("category", e)
}
const fetchques = () => {
  localStorage.setItem("score", 0);
  return fetch('https://opentdb.com/api.php?amount=10&category='+localStorage.getItem("category")+'&type=multiple')
    .then(response => response.json())
    .then(r =>{localStorage.setItem("questions", JSON.stringify(r["results"])); localStorage.setItem("index", 0)})
    .catch((err) => {
      console.log(err);
    })
}
var time=180


const getques = async () => {
  
  
  await fetchques();
    timer();
      
  
}
var handler, correct;



function timer(){
  
  var options=document.getElementsByName("op");
  for(var optionsIndex=0;optionsIndex<options.length;optionsIndex++)
  {
    options[optionsIndex].checked=false;
  }
  var ques=document.getElementById('ques-text')
  var res=JSON.parse(localStorage.getItem("questions"))
  var index=JSON.parse(localStorage.getItem("index"))
  
    ques.innerText=index+1+") "+res[index].question
     correct=Math.floor(Math.random() * 4)+1;
    
    document.getElementById("option"+correct).innerText=res[index].correct_answer
    var inc=0;
    for(var i=1; i<=4;i++)
    {
      if(i!==correct)
      {
        document.getElementById("option"+i).innerText=res[index].incorrect_answers[inc]
        inc++
      }
    }
    time=180;
    if(index<10)
    {
    
    handler=setInterval(change, 1000)
    localStorage.setItem("index", index+1)
    }
  
}
function change()
{
  document.getElementById('timer-text').innerText=time;
  
  time--;
  if(JSON.parse(localStorage.getItem("index"))<10)
  {
    
  if(time==0 )
  {
    if(document.getElementById(correct).checked)
    {
      var score=JSON.parse(localStorage.getItem("score"))+1;
      localStorage.setItem("score", score)
      
    }
    clearInterval(handler);
    timer();
  }
}
else{
  if(time==0)
    window.location.href="results.html";
}
}

function changeQuestion(){

  if(JSON.parse(localStorage.getItem("index"))<10)
  { 
    
    if(document.getElementById(correct).checked)
    {
      var score=JSON.parse(localStorage.getItem("score"))+1;
      localStorage.setItem("score", score)
      
      
    }
  clearInterval(handler);
  time=180;
    timer();
  }else{
    
    window.location.href="results.html";
  }
}



function getscore()
{
  var usertext=document.getElementById('user')  
  usertext.innerText=localStorage.getItem("name")
  
  var scoretext=document.getElementById('score-text')  
  scoretext.innerText=localStorage.getItem("score")
  
}




function returnToHome(){
  window.location.href="homepage.html"
}