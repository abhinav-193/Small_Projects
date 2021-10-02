import React , {useContext} from 'react';
import { 
   Route,
    Redirect
} from "react-router-dom";
import Context from '../context/AuthContext';
// import Home from './Home';


function Dashboard (){
    const logger=useContext(Context);

    return(
        <div className="router">
            <Route>
                {
                    logger.loggedIn?"Welcome To dashboard" : <Redirect to ='/'/>
                }
            </Route>
        </div>
    );
}

export default Dashboard;