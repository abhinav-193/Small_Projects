// Everything after the navbar is literally  a part of this.

import React from "react";
import "./Home.css";
import Products from "./Products";

function Home() {
    return (
        <div className="home">
            <img
                className="home__img"
                src="https://m.media-amazon.com/images/I/61xPJJUCZ0L._SX3000_.jpg"
                alt=""
            />

            {/* Product id title price rating image */}
            {/* the products component here  */}

            <div className="home__productsRow two">
                <Products
                    title="Samsung Galaxy S20 FE 5G (Cloud Navy, 8GB RAM, 128GB Storage)"
                    price={100.2}
                    id="1"
                    rating={5}
                    image="https://m.media-amazon.com/images/I/81lGGiahJTS._SL1500_.jpg"
                />

                <Products
                    title="Vivo Y73 (Diamond Flare, 8GB RAM, 128GB Storage)"
                    price={100.2}
                    id="2"
                    rating={5}
                    image="https://m.media-amazon.com/images/I/61bRT+Jzd-S._AC_SX410_SY308_.jpg"
                />

                <Products
                    title="Vivo Y73 (Diamond Flare, 8GB RAM, 128GB Storage)"
                    price={100.2}
                    id="3"
                    rating={5}
                    image="https://m.media-amazon.com/images/I/61bRT+Jzd-S._AC_SX410_SY308_.jpg"
                />
            </div>

            <div className="home__productsRow two">
                <Products
                    title="Redmi Note 10S (Deep Sea Blue, 6GB RAM, 64GB Storage) -Super Amoled Display | 64 MP Quad Camera"
                    price={100.2}
                    id="4"
                    rating={5}
                    image="https://m.media-amazon.com/images/I/81B0HJigO-L._SL1500_.jpg"
                />

                <Products
                    title="Mi 11X 5G Cosmic Black 8GB RAM 128GB ROM | SD 870 | DisplayMate A+  rated E4 AMOLED"
                    price={100.2}
                    id="5"
                    rating={5}
                    image="https://m.media-amazon.com/images/I/71VQXjN6R7S._SL1500_.jpg"
                />

                <Products
                    title="Redmi Note 10 Pro Max (Glacial Blue, 6GB RAM, 128GB Storage) -108MP Quad Camera|120Hz Super Amoled Display"
                    price={100.2}
                    id="6"
                    rating={5}
                    image="https://m.media-amazon.com/images/I/8130rAC+NzL._SL1500_.jpg"
                />

                <Products
                    title="Redmi 9 Power (Mighty Black 4GB RAM 64GB Storage) - 6000mAh Battery |FHD+ Screen | 48MP Quad Camera | Alexa Hands-Free Capable"
                    price={100.2}
                    id="7"
                    rating={5}
                    image="https://m.media-amazon.com/images/I/71hEzQGO5qL._SL1500_.jpg"
                />
            </div>

            <div className="home__productsRow two">
                <Products
                    title="OnePlus Nord 2 5G (Blue Haze, 8GB RAM, 128GB Storage)"
                    price={100.2}
                    id="8"
                    rating={5}
                    image="https://m.media-amazon.com/images/I/61TnX0PmqES._SL1500_.jpg"
                />

                <Products
                    title="OnePlus 9R 5G (Carbon Black, 8GB RAM, 128GB Storage) I Additional upto INR3000 off on Exchange"
                    price={100.2}
                    id="9"
                    rating={5}
                    image="https://m.media-amazon.com/images/I/61PDbUd1VaL._SL1500_.jpg"
                />

                <Products
                    title="OnePlus 9 5G (Arctic Sky,12GB RAM, 256GB Storage) I Additional upto INR5000 off on Exchange"
                    price={100.2}
                    id="10"
                    rating={5}
                    image="https://m.media-amazon.com/images/I/61MJilnI5pL._SL1500_.jpg"
                />
            </div>

            <div className="home__productsRow two">
                <Products
                    title="New Apple iPhone 12 Pro Max (128GB) - Pacific Blue"
                    price={100.2}
                    id="11"
                    rating={5}
                    image="https://m.media-amazon.com/images/I/71MHTD3uL4L._SL1500_.jpg"
                />

                <Products
                    title="New Apple iPhone 11 (64GB) - Bright RED"
                    price={100.2}
                    id="12"
                    rating={5}
                    image="https://m.media-amazon.com/images/I/71hh7cpWadL._SL1500_.jpg"
                />
            </div>

            <footer>Made with ❤ by Tamal.</footer>
        </div>
    );
}

export default Home;
