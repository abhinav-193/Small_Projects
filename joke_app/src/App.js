// import logo from './logo.svg';
import React,{useState,useEffect} from 'react'
import Axios from 'axios'
import './App.css';

function App() {
  const [jokes,setJokes] = useState({})
  const [kuchbhi,setKuchbhi] = useState(false)
  useEffect(()=>{
    Axios.get("https://v2.jokeapi.dev/joke/Any")
    .then((res)=>{
      setJokes(res.data)
    })

  },[kuchbhi])
  console.log(jokes);
  function next(){
    setKuchbhi(!kuchbhi)
  }
  return (
    <div className="App">
      <h1>🤣You Me Jokes😂</h1>
      <div className="jokescontainer">
        <h4>YOU: {jokes.setup}</h4>
        <h4>ME: {jokes.delivery}</h4>
        <div className="btn">
        <button onClick={()=>{next()}}>Click Next</button>
        </div>
      </div>
    

    
    </div>
  );
}

export default App;
