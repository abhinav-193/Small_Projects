//rfce for this
import React from "react";
import { Link } from "react-router-dom";
import SearchIcon from "@material-ui/icons/Search";
import ShoppingBasketIcon from "@material-ui/icons/ShoppingBasket";
import "./Navbar.css";
import { useStateValue } from "./StateProvider";
import { auth } from "../firebase"

function Navbar() {
  //State is the current state of the data layout it simply breaks down to basket[]
  //dispatch is
  const [{ basket, user }] = useStateValue();
  const login = () => {
    if (user) {
      auth.signOut();
    }
  }

  return (
    <nav className="  header ">
      {/* logo on the left */}
      <Link to="/">
        <img
          className="header__logo"
          src="https://pngimg.com/uploads/amazon/amazon_PNG11.png"
          alt=""
        />
      </Link>

      {/* searchbox */}
      <div className="header__search">
        <input type="text" className="header__searchInput" />
        <SearchIcon className="header__searchIcon" />
      </div>

      {/* 3 links signin, return, prime  and one basket*/}

      <div className="header__nav">

        {/* 1st link sign-in*/}
        <Link to={!user && "/login"} className="header__link">
          <div className="header__option" onClick={login}>
            <span className="header__optionLineOne">Hello {!user ? 'Guest' : user.email}</span>
            <span className="header__optionLineTwo">{user ? "Sign Out" : "Sign In"}</span>
          </div>
        </Link>

        {/* 2nd link returns */}
        <Link to="/" className="header__link">
          <div className="header__option">
            <span className="header__optionLineOne">Returns</span>
            <span className="header__optionLineTwo">& orders</span>
          </div>
        </Link>

        {/* 3rd link prime*/}
        <Link to="/" className="header__link">
          <div className="header__option">
            <span className="header__optionLineOne">Your</span>
            <span className="header__optionLineTwo">Prime</span>
          </div>
        </Link>

        {/* 4th link basket */}
        <Link to="/checkout" className="header__link">
          <div className="header__optionBasket">
            {/* Basket logo */}
            <ShoppingBasketIcon />

            {/* Basket items number */}
            <span className="header__optionLineTwo header__basketcount">
              {/* this basically will show you the length of the basket */}
              {basket?.length}
            </span>
          </div>
        </Link>


        {/* end */}
      </div>
    </nav>
  );
}

export default Navbar;
