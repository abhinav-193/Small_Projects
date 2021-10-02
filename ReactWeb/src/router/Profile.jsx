import React , {useContext} from 'react';
import { 
    Route,
    Redirect
} from "react-router-dom";
import Context from '../context/AuthContext';


 function Profile (props){
    const logger=useContext(Context);

    return (
        <div className="router">
            <Route>
                {
                    logger.loggedIn? "Welcome To Profile" : <Redirect to ='/'/>
                }
            </Route>
        </div>
    );
}

export default Profile;
