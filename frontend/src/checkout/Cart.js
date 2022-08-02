import React, {useState, useEffect} from 'react'
import CartItem from './CartItem.js'
import {useNavigate} from 'react-router-dom'

import GooglePayButton from '@google-pay/button-react'


function Cart() {

    const history = useNavigate() 
    let [cartItems, setCartItems] = useState([])
    let [subtotal, setSubtotal] = useState(0.00)
    let [grandTotal, setGrandTotal] = useState(0.00)
    let [paymentInfo, setPaymentInfo] = useState({})
    let [user, setUser] = useState(null)
    let [cart, setCart] = useState([]) //this may not be good, but the cart dats isnt set otherwise
    let salesTax = .085
    let userId = 0

 //   useEffect(() => grabCart(), [])

    useEffect(() => setGrandTotal((subtotal * (salesTax + 1)).toFixed(2)), [subtotal])
   
    useEffect(() => 
       { if (paymentInfo.paymentMethodData) {
        completeOrder(paymentInfo) }
        }, [paymentInfo] )

    useEffect(()  => { 
    grabCart()
    youGetMe("/getme/")


}, [])

function youGetMe(url) {

    fetch(url)
    .then(res => res.json())
    .then(data => {//  console.log(data)
     // console.log(data)
        setUser(data) 
    })
  }




    function completeOrder(paymentData) {

        let submitIt = {
            user_id: user.id,
            fulfilled: "Ordered",
            fulfilled_by: 0,
            subtotal: subtotal,
            stax: salesTax,
            grandtotal: grandTotal
        }


  //      console.log(paymentData)
        let fullurl = "/orders/"
        fetch(fullurl, {
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            method: "POST",
            body: JSON.stringify(submitIt)
        })
        .then(res => res.json())
        .then(data => { //console.log(data)
            makeOrderItems(data.id)
          
            history('../orderdone')
           
            })
    }

    function makeOrderItems(orderID) { 
        for (let i of Object.keys(cart)) {
           let submitIt = {
                item_id: i,
                amount: cart[i],
                order_id: orderID
            }

            fetch("/orderitems/", {
                headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json'
                },
                method: "POST",
                body: JSON.stringify(submitIt)
            })
            .then(res => res.json())
            .then(data => { 
                //console.log(data)
                })


        }
        
    }


    function grabCart() {
        fetch('/getcart/')
        .then(res => res.json())
        .then((data) => {
            makeGrandTotal(data)
            setCart(data)
            makeItems(data)
            
            
        })
    }

    let gpButton = (
                
        <GooglePayButton
        className="centered"
            environment="TEST"			//TEST or PRODUCTION
            paymentRequest={{
                apiVersion:2,
                apiVersionMinor:0,
                allowedPaymentMethods:[
                    {
                        type:"CARD",
                        parameters: {
                            allowedAuthMethods:["PAN_ONLY", "CRYPTOGRAM_3DS"],
                            allowedCardNetworks:["MASTERCARD", "VISA"]
                        },

                        tokenizationSpecification:{
                            type:"PAYMENT_GATEWAY",
                            parameters:{
                                gateway:"example",
                                GatewayMerchantId:"example"
                            }
                        }
                    }
                ],
                    
                            merchantInfo:{
                                merchantId:"12345678",
                                merchantName:"Demo Merchant"
                            },

                            transactionInfo:{
                                totalPriceStatus:"FINAL",
                                totalPriceLabel:"Total",
                                totalPrice:grandTotal.toString(),
                                currencyCode:"USD",
                                countryCode:"US"
                            },
                            shippingAddressRequired:true,
                            callbackIntents:["PAYMENT_AUTHORIZATION"]
                        }}

                        onLoadPaymentData={paymentRequest => paymentRequest }
                        onPaymentAuthorized={paymentData => {
                            setPaymentInfo(paymentData)
                            return { transactionState: "SUCCESS" }
                        }}
                        existingPaymentMethodRequired="false"
                        buttonColor="Black"
                        buttonType="Buy"

            >
                </GooglePayButton>
            )



            function makeGrandTotal(cartData) {
                let total = 0.00
                let iterations = 0
                if (Object.keys(cartData).length === 0) { setSubtotal(0) }
                for (let i of Object.keys(cartData)) {
                    let url = '/items/' + i
                    fetch(url)
                    .then(res => res.json())
                    .then(data => { 
                        iterations += 1
                        let subPrice = data.price * cartData[i]
                        total = subPrice + total
                        if (iterations === Object.keys(cartData).length)    { setSubtotal(total.toFixed(2)) }
                    })
                }
            }




    function makeItems(cartData) {
        
        if (cartData) { 
           setCartItems (Object.keys(cartData).map(i => <CartItem item={i} amount={cartData[i]} redoItems={redoItems}  key={i} />) )
        }
    }

    function redoItems() {
        setCartItems([])
        grabCart()
    }

console.log(user && subtotal > 0)

    return(
        <div>
            <h1 className='middleText'>Cart</h1>
            {cartItems}
            <br />
            <div className='gpButton'>
                Subtotal: ${subtotal}<br />
                Sales Tax: {salesTax * 100}%<br />
                Total: ${grandTotal}<br />
                {(user && subtotal > 0) ? gpButton : null}
            </div>


        </div>
    )
}

export default Cart