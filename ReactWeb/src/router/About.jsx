import React,{useContext} from 'react'
import Context from '../context/AuthContext';


 function About (props){
     const logger = useContext(Context)
    return (
        <div className="router">
        <h1> About</h1>
        <div>{logger.loggedIn ? "You are Logged in":"You are Logged Out"}</div>
     </div>
    );
}

export default About;
