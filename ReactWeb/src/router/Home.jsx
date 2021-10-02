import React,{useContext,useState} from 'react'
import Context from '../context/AuthContext';

 function Home (props){
    const logger = useContext(Context)
    const toggleLogin = () =>{
       logger.toggleLogin();
    }
    return (
        <div className="router">
            <h1> Home</h1>
            <div>Login To Access Dashboard and Profile</div>
            {
                logger.loading?"Loading..": 
                logger.loggedIn ?
                <button onClick={logger.logout}>Logout</button> :  
                <button onClick={logger.login}>Login</button>   
                
            }
            
     </div>
    );
}

export default Home;
