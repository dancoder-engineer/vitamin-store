import React from 'react'
import { useState, useEffect } from 'react'
import {NavLink} from 'react-router-dom'

function OrderDone() {

    let [emptiedCart, setEmptiedcart] = useState(false)

    useEffect(() => {
        fetch("/emptycart/")
        .then(res => res.json())
        .then(data => {  console.log("data")
        //  console.log(data)
          setEmptiedcart(true)
        })
    }, [])
   

    return(
    <div className="mainDiv">
        {emptiedCart&&( <div>
        Your order has been placed.<br />
        <NavLink to="/">Please click here to return to the store.</NavLink>
        </div>
        )}
    </div>
    )
}

export default OrderDone