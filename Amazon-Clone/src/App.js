import React, { useEffect } from "react";
import "./App.css";
import { BrowserRouter as Router, Switch, Route } from "react-router-dom";
import Navbar from "./Components/Navbar";
import Home from "./Components/Home";
import Checkout from "./Components/Checkout";
import Login from "./Components/Login";
import { useStateValue } from "./Components/StateProvider";
import { auth } from "./firebase";

function App() {
  const [{ user }, dispatch] = useStateValue();

  //useEffect hook
  useEffect(() => {
    const unsubscribe = auth.onAuthStateChanged((authUser) => {

      if (authUser) {
        //logged in
        dispatch({
          type: "SET_USER",
          user: authUser
        })
      }
      else {
        //logged out
        dispatch({
          type: "SET_USER",
          user: null
        })
      }

    });

    return () => {
      unsubscribe();
    }
  }, []);

  console.log("USER IS >>>>", user);

  return (
    //These are basically routes to different types of pages
    <Router>
      <div className="app">
        <Switch>
          <Route path="/checkout">
            <Navbar />
            <Checkout />
          </Route>

          <Route path="/login">
            <Navbar />
            <Login />
          </Route>

          <Route path="/">
            <Navbar />
            <Home />
          </Route>
        </Switch>
      </div>
    </Router>
  );
}

export default App;
