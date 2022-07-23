import React, {useState, useEffect} from 'react'
import CartItem from './CartItem.js'

function Cart() {

    let [cartItems, setCartItems] = useState([])

    useEffect(()  => {
    grabCart()
}, [])

    function grabCart() {
        fetch('/getcart/')
        .then(res => res.json())
        .then(data => makeItems(data))
    }

    function makeItems(cartData) {
        if (cartData) { 
           setCartItems (Object.keys(cartData).map(i => <CartItem item={i} amount={cartData[i]} />) )
        }
    }



    return(
        <div>
            <h1 className='middleText'>Cart</h1>
            {cartItems}
            <br />
            <button className='centered'>Check Out</button>


        </div>
    )
}

export default Cart