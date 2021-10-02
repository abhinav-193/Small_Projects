import React from 'react'
import CurrencyFormat from 'react-currency-format';
import { useStateValue } from "./StateProvider";
import { getBasketTotal } from "./Reducer";
import { useHistory } from "react-router-dom"
import "./Subtotal.css"

function Subtotal() {
    let history = useHistory();
    const [{ basket, user }, dispatch] = useStateValue();

    const loginCheck = () => {
        if (!user) {
            history.push("/Login");
        }
    }


    return (
        <div className="subtotal">

            <CurrencyFormat
                renderText={(value) => (
                    <>
                        <p>
                            Subtotal ({basket.length} items): <strong>{value}</strong>
                        </p>
                        <small className="subtotal__gift">
                            <input type="checkbox" className="subtotal__input" /> This order contains a gift
                        </small>
                    </>
                )}
                decimalScale={2}
                value={getBasketTotal(basket)}
                displayType={"text"}
                thousandSeparator={true}
                prefix={"₹"}
            />
            <button className="subtotal__button" onClick={loginCheck}>Proceed to checkout</button>
        </div>
    )
}

export default Subtotal
