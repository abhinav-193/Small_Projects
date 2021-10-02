import React from 'react'
import "./CheckoutProduct.css"
import { useStateValue } from './StateProvider'

function CheckoutProduct({ id, title, image, price, rating }) {
    //This is basically your product structure
    //It returns the products that you have added to the basket
    const [{ basket }, dispatch] = useStateValue();

    const removeFromBasket = () => {
        //remove items from basket
        dispatch({
            type: "REMOVE_FROM_BASKET",
            id: id,
        })
    };
    return (
        <div className="checkoutProduct">

            <img className="checkoutProduct__image" src={image} alt="" />

            <div className="checkoutProduct__info">

                <p className="checkoutProduct__title">{title}</p>

                <p className="checkoutProduct__price">
                    <small> ₹</small> <strong>{price}</strong>{" "}
                </p>

                <div className="checkoutProduct__ratings">
                    {Array(rating)
                        .fill()
                        .map((_) => (
                            <p>⭐</p>
                        ))}
                </div>

                <button className="checkoutProduct__button" onClick={removeFromBasket} >Remove from basket</button>

            </div>


        </div>
    )
}

export default CheckoutProduct
