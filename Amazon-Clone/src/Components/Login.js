import React, { useState } from "react";
import "./Login.css";
import { Link, useHistory } from "react-router-dom";
import { auth } from "../firebase";

function Login() {
    const history = useHistory();
    const [email, setEmail] = useState("");
    const [password, setPassword] = useState("");

    const login = (e) => {
        //this is used to prevent refresh after submit
        e.preventDefault();

        //login logics after this
        auth
            .signInWithEmailAndPassword(email, password)
            .then(auth => {
                //this is to redirect
                history.push('/')
            })
            .catch(error => alert(error.message))
    };

    const register = (e) => {
        //this is used to prevent refresh after submit
        e.preventDefault();

        //register logics after this
        auth
            .createUserWithEmailAndPassword(email, password)
            .then((auth) => {
                // it successfully created a new user with email and password
                if (auth) {
                    history.push('/')
                }
            })
            .catch(error => alert(error.message))

    };

    return (
        <div className="login">
            <Link to="/">
                <img
                    className="login__logo"
                    src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Amazon_logo.svg/1024px-Amazon_logo.svg.png"
                    alt=""
                />
            </Link>

            <div className="login__container">
                <h1 className="login__signin">Sign in</h1>

                <form>
                    <h5>E-mail</h5>
                    <input
                        value={email}
                        onChange={e => setEmail(e.target.value)}
                        className="login__mail"
                        type="email"
                        name=""
                        id=""
                    />
                    <h5>Password</h5>
                    <input value={password} className="login__pass" type="password" onChange={e => setPassword(e.target.value)} />
                    <button className="login__button" type="submit" onClick={login}>
                        Sign in
                    </button>
                </form>

                <p className="login__terms">
                    By signing-in you agree to the AMAZON terms and Conditions of Use &
                    Sale. Please see our Privacy Notice, our Cookies Notice and our
                    Interest-Based Ads Notice before continuing further.
                </p>
                <small
                    style={{ textAlign: "center", marginTop: "10px", fontSize: "11px" }}
                >
                    Don't have an account ?
                </small>
                <button className="login__register" onClick={register}>
                    Create your amazon account
                </button>
            </div>
        </div>
    );
}

export default Login;
