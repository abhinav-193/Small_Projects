import './styles/App.css'
import { 
BrowserRouter as Router,
Switch,
Link,
Route
} from 'react-router-dom';
import Home from './router/Home';
import About from './router/About';
import Dashboard from './router/Dashboard';
import Profile from './router/Profile';
import {AuthContext} from './context/AuthContext';




function App(){

    const mystyle = {
        color: "white",
        padding: "10px",
        fontFamily: "Arial",
        textDecoration: 'none'
      };

    return(
        <div className="app">
            <Router>
            <nav>
                <ul className="link-text">
                    <li>
                        <Link to ="/" style={mystyle} className="active">Home</Link>
                    </li>
                    <li>
                        <Link to ="/about"  style={mystyle}>About</Link>
                    </li>
                    <li>
                        <Link to ="/dashboard" style={mystyle}>Dashboard</Link>
                    </li>
                    <li>
                        <Link to ="/profile" style={mystyle}>Profile</Link>
                    </li>
                </ul>
            </nav>
               <Switch>
                   <AuthContext>
                        <Route exact path="/" component={Home}/>
                        <Route exact path="/about" component={About}/>
                        <Route exact path="/dashboard" component={Dashboard}/>
                        <Route exact path="/profile" component={Profile}/>
                    </AuthContext>
               </Switch>
           </Router>
        </div>
    );
}

export default App;